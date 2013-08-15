class ActivitiesController < ApplicationController
  respond_to :html, :json

  def index
    respond_with @activities = Activity.all
  end

  def show
    respond_with Activity.find(params[:id])
  end

  def create
    @task = Activity.new(params[:activity])
    @task.save
    respond_with @task
  end

  def update
    respond_with Activity.update(params[:id], params[:activity])
  end

  def destroy
    respond_with Activity.destroy(params[:id])
  end
end
