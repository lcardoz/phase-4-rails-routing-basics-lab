class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students_ordered = Student.all.order(grade: :desc)
    render json: students_ordered
  end

  def highest_grade
    @student_ordered = Student.all.order(grade: :desc).first
    render json: @student_ordered
  end

end
