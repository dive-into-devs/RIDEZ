class CarsController < ApplicationController
  def index
    @cars = Car.all
    @cars = Car.where("model ilike '%#{params[:brand]}%'") if params[:brand].present?   # params[:location]
    @cars = @cars.where("location ilike '%#{params[:location]}%'") if params[:location].present?   # params[:location]
   # params[:location]
   # params[:brand]
   # params[:date]
  end

  def show
    @car = Car.find(params[:id])
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
