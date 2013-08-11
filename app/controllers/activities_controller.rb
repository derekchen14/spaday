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
    # no if-else block is necessary because Rails automatically replies
    # with "status: unprocessable_entity" in the case of a failed save 
    respond_with @task
  end

  def update
    respond_with Activity.update(params[:id], params[:activity])
  end

  def destroy
    respond_with Activity.destroy(params[:id])
  end
end
