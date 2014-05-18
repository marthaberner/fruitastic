class CarsController < ApplicationController

  def index
    @cars = Car.all
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)

    if @car.save
      redirect_to cars_path
    else
      render 'cars/index'
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update_attributes!(car_params)
    redirect_to car_path(@car)
  end

  def car_params
    params.require(:car).permit(:model, :year)
  end
end