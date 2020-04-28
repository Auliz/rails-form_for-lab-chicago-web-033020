class StudentsController < ApplicationController

  def index
  end 

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = student_params[:first_name]
    @student.last_name = student_params[:last_name]
    @student.save
    redirect_to @student
  end

  def show
    find_student
  end 

  def edit
    find_student
  end 

  def update
    find_student
    @student.update(student_params)
    redirect_to @student
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end 

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end 

end 