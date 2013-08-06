class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(params[:instructor])
    if @instructor.save
      flash[:notice] = "Successfully added instructor"
      redirect_to instructors_path
    end
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update_attributes(params[:instructor])
      flash[:notice] = "Successfully updated instructor"
      redirect_to instructor_path
    end
  end

  def destroy
    Instructor.find(params[:id]).destroy
    redirect_to instructors_path
  end
end
