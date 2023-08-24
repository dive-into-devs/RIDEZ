class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def payment
  end

  def confirmation
  end
end
