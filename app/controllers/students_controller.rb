class StudentsController < ApplicationController

  before_action :get_student, only: [:edit, :update, :show]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(students_params)
    redirect_to @student
  end

  def update
    @student.update(students_params)
    redirect_to @student
  end

  private
  def get_student
    @student = Student.find(params[:id])
  end

  def students_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
