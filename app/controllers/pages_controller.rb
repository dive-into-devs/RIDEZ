class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @brands = ["Abarth", "Alfa Romeo", "Casalini", "Cizeta", "De Tomaso", "DR", "Ferrari", "Tesla", "BMW", "Ford", "Porsche", "Volkswagen", "Toyota", "Daimler", "GM", "Honda", "SAIC", "Chevrolet", "Nissan", "Fiat", "Jeep", "Volvo", "Bentley", "Bugatti", "Aston Martin", "Jaguar", "GMC", "Infiniti", "Audi", "Buick", "Cadillac"]
    @cities = ["Agadir", "Al Hoceima", "Azrou", "Beni Mellal", "Boujdour", "Casablanca", "Chefchaouen", "Dakhla", "El Jadida", "Essaouira", "Fes", "Guelmim", "Ifrane", "Kenitra", "Khemisset", "Khouribga", "Laayoune", "Larache", "Marrakech", "Meknes", "Mohammedia", "Nador", "Ouarzazate", "Oujda", "Rabat", "Safi", "Sale", "Settat", "Sidi Ifni", "Tafraout", "Tangier", "Taroudant", "Tata", "Taza", "Tetouan", "Tinghir", "Tiznit", "Zagora"]
    @cars = Car.all
  end

  def payment
  end

  def confirmation

  end

  def listing
    if Owner.find_by(user: current_user)
      @owner = Owner.find_by(user: current_user)
    else
      @owner = Owner.create(user: current_user)
    end
    @cars = @owner.cars
  end

  def offers
    @user = current_user
    @offers = @user.offers
  end
end
