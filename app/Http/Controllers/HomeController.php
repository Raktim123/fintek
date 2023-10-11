<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Chapter;
use App\Models\Course;
use App\Models\CourseMeta;
use App\Models\Enroll;
use App\Models\Lesson;
use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    public function index()
    {
        $menus = $this->get_menus();

        $records = [];
        $categories = Category::all();
        foreach($categories as $category)
        {
            $category->courses = DB::table('course_metas')
                                    ->join("courses", "course_metas.course_id", "=", "courses.id") 
                                    ->where("courses.category_id", $category->id)->get();

            if(count($category->courses) > 0) 
            {
                $records[] = $category;
            }
        }           

        return view('frontend.index', ["records" => $records, "menus" => $menus]);
    }

    public function single_course(Request $request) 
    {
        $menus = $this->get_menus();

        $course = Course::find($request->id);
        $course->course_meta = CourseMeta::where("course_id", $request->id)->first();
        $chapters = [];

        $course_chapters = Chapter::where("course_id", $course->id)->get();
        foreach($course_chapters as $chapter) 
        {
            $chapter->lessons = Lesson::where("chapter_id", $chapter->id)->get();
            $chapters[] = $chapter;
        }

        $course->chapters = $chapters;

        return view('frontend.single_course', ["course" => $course, "menus" => $menus]);
    }

    public function learning(Request $request)
    {
        $menus = $this->get_menus();

        $courses = [];
        $my_courses= Enroll::where("student_id", auth()->user()->id)->get();
        foreach($my_courses as $my_course) {
            $courses[] = Course::find($my_course->course_id);
        }

        return view("frontend.my_learning", ["courses" => $courses, "menus" => $menus]);
    }

    public function get_menus()
    {
        $menu['category'] = array();
         $all = Category::where('parent_id',0)->get()->toArray();
         foreach($all as $value){
            $arr1['subcat'] = array();
           $arr1["id"] = $value['id'];
           $arr1["title"] = $value['name'];
           $arr1["desc"] = $value['description'];
           $arr1["iamge"] = $value['image'];
           $bll = Category::where('parent_id',$value['id'])->get()->toArray();
           foreach($bll as $vell){
            $arr2 = [];
             $arr2["sub_id"] = $vell['id'];
             $arr2["sub_title"] = $vell['name'];
             $arr2["sub_desc"]= $vell['description'];
             $arr2["sub_image"] = $vell["image"];
             array_push($arr1['subcat'], $arr2);
           }
           array_push($menu['category'], $arr1);
         }
        //return $menu;
    }
}
