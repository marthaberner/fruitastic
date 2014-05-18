class BikesController < ApplicationController

  def index
    @bikes = Bike.all
    @bike = Bike.new
  end

  def create
    @bike = Bike.create(bike_params)

    if @bike.save
      redirect_to bikes_path
    else
      render 'bikes/index'
    end
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update_attributes!(bike_params)

    redirect_to bike_path(@bike)
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.delete

    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :year)
  end
end
