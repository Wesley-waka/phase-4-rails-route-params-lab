class StudentsController < ApplicationController

  def index
    if params[:name]
      render json:students = Student.where("first_name LIKE ? OR last_name LIKE ?", "#{params[:name]}", "#{params[:name]}")
    else
      render json:students = Student.all
  end
end
  def show
    studentInfo=Student.find(params[:id])
    render json:studentInfo
  end


end
