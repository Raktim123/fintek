<?php

namespace App\Http\Controllers;

use App\Models\CourseMeta;
use Illuminate\Http\Request;

class CourseMetaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $course_meta = CourseMeta::find($id);

        $course_meta->things_to_learn = $request->things_to_learn;
        $course_meta->requirements = $request->things_to_learn;
        $course_meta->target_audience = $request->target_audience;

        if($course_meta->save()) {
            return response()->json(["status" => "success", "message" => "Data saved"]);
        }
        else {
            return redirect()->back(["status" => "failed", "message" => "Sorry! Something went wrong."]);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
