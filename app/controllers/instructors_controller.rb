class InstructorsController < ApplicationController
  respond_to :json

  def index
    respond_with Instructor.all
  end

  def show
    respond_with Instructor.find(params[:id])
  end

  def create
    respond_with Instructor.create(params[:instructor])
  end

  def update
    respond_with Instructor.update(params[:id], params[:instructor])
  end

  def destroy
    respond_with Instructor.destroy(params[:id])
  end
end
