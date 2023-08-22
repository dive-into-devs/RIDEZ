class CarsController < ApplicationController
  def index
    @cars = car.all
  end

  def show
    @car = car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:plate, :model, :vin, :owner, :description)
  end
end
