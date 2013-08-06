class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to services_path
    end
  end

  def show
    @service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @update = Service.find(params[:id])
    if @update.update_attributes(params[:service])
      redirect_to service_path
    end
  end

  def destroy
    Service.find(params[:id]).destroy
    redirect_to services_path
  end
end
