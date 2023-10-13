<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;
use App\Models\PaymentMethod;
use App\Models\Transaction;
use App\Models\Order;
use Illuminate\Support\Facades\DB;

class InstructorController extends Controller
{
    public function dashboard()
    {
        $courses = Course::where("instructor_id", auth()->user()->id)->get();

        return view("instructor.dashboard", ["courses" => $courses]);
    }

    public function earning(Request $request)
    {
        return view("instructor.earning");
    }

    public function add_payment_method(Request $request)
    {
        $payment_method = new PaymentMethod();
        
        $payment_method->instructor_id = $request->instructor_id;
        $payment_method->type = $request->type;
        $payment_method->details = $request->details;

        if($payment_method->save()) 
        {
            return response()->json(["status" => true], 200);
        }
        else 
        {
            return response()->json(["status" => true], 200);
        }
    }

    public function transaction(){
        $total["History"] = array();
        $tran = Transaction::orderBy('id', 'desc')->get()->toArray();
        foreach($tran as $value){
            $arr2 = [];
            $stat = $value['type'];
            if($stat=="EARNING"){
                $ss = DB::select("select * from orders inner join transactions on orders.id = transactions.ref_id inner join courses on orders.course_id = courses.id inner join users on orders.purchase_by = users.id where courses.instructor_id = ? and transactions.ref_id = ?", [auth()->user()->id, $value['ref_id']]);
                 $resultsArray = json_decode(json_encode($ss), true);
                 
                 if(sizeof($resultsArray)===1){
                   $arr2["Date"]  = date("d-m-Y", strtotime($value['created_at']));
                   $arr2["Type"] = "Purchased";
                   $arr2["Amount"] = $resultsArray[0]['amount'];
                   $arr2["Name"] = $resultsArray[0]["title"];
                   $arr2["Desc"] = $resultsArray[0]["name"].", has purchased the cource: ".$resultsArray[0]["title"].", with order ID : ".$resultsArray[0]["order_id"];
                   $arr2["referrer"] = $resultsArray[0]["order_id"];
                   $arr2["status"] = $resultsArray[0]["payment_status"];
                   array_push($total["History"],$arr2);
                 }
                 
            }else{
                $ss = DB::select("SELECT * FROM transactions AS t1 INNER JOIN withdrawals AS t2 ON t1.ref_id = t2.id INNER JOIN users AS t3 ON t2.withdrawal_by = t3.id WHERE t3.id = ? and t1.ref_id = ?", [auth()->user()->id,$value['ref_id']]);
                $resultsArray = json_decode(json_encode($ss), true);  
                if(sizeof($resultsArray)===1){
                    $arr2["Date"]  = date("d-m-Y", strtotime($value['created_at']));
                    $arr2["Type"] = "Withdrawn";
                    $arr2["Amount"] = $resultsArray[0]['amount'];
                    $arr2["Name"] = "NA";
                    $arr2["Desc"] = "You have requested for withdraw the amount : ".$resultsArray[0]['amount'];
                    $arr2["referrer"] = $resultsArray[0]["reference"];
                    $arr2["status"] = $resultsArray[0]["withdrawal_status"];
                    array_push($total["History"],$arr2);
                }

            }
            
        }
        
        return view("instructor.earning",["histories" => $total]);

    }
}
