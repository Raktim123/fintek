<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class InstructorController extends Controller
{
    public function dashboard()
    {
        $courses = Course::where("instructor_id", auth()->user()->id)->get();

        return view("instructor.dashboard", ["courses" => $courses]);
    }
}
