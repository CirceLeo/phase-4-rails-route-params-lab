class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def by_name
    student = Student.all.where(first_name: params[:])
  end

end
