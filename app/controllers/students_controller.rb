class StudentsController < ApplicationController

  def new
  end

  def show
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
  end


  private
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
