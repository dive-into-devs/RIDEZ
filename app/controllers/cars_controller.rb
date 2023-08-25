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

    @car = Car.where(id: params[:id])
    @markers = @car.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        marker_html: render_to_string(partial: "marker")
      }
    end
    @car = @car.first
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if Owner.find_by(user: current_user)
      @owner = Owner.find_by(user: current_user)
    else
      @owner = Owner.create(user: current_user)
    end

    @car.owner = @owner
    @car.save!
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:plate, :model, :vin, :owner, :description, :price, :location, photos: [])
  end
end
