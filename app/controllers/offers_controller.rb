class OffersController < ApplicationController
  before_action :set_car, only: %i[new create]
  before_action :set_offer, only: %i[destroy]

  def new
    @car = Car.find(params[:car_id])
    @offers = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.car = @car
    @offer.save
    redirect_to car_path(@car)
  end

  def destroy
    @offer.destroy
    redirect_to car_path(@offer.car), status: :see_other
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:comment, :movie_id, :car_id)
  end
end
