class PagesController < ApplicationController
  def home
    @brands = ["Abarth", "Alfa Romeo", "Casalini", "Cizeta", "De Tomaso", "DR", "Ferrari", "Tesla", "BMW", "Ford", "Porsche", "Volkswagen", "Toyota", "Daimler", "GM", "Honda", "SAIC", "Chevrolet", "Nissan", "Fiat", "Jeep", "Volvo", "Bentley", "Bugatti", "Aston Martin", "Jaguar", "GMC", "Infiniti", "Audi", "Buick", "Cadillac"]
    @cities = ["Agadir", "Al Hoceima", "Azrou", "Beni Mellal", "Boujdour", "Casablanca", "Chefchaouen", "Dakhla", "El Jadida", "Essaouira", "Fes", "Guelmim", "Ifrane", "Kenitra", "Khemisset", "Khouribga", "Laayoune", "Larache", "Marrakech", "Meknes", "Mohammedia", "Nador", "Ouarzazate", "Oujda", "Rabat", "Safi", "Sale", "Settat", "Sidi Ifni", "Tafraout", "Tangier", "Taroudant", "Tata", "Taza", "Tetouan", "Tinghir", "Tiznit", "Zagora"]
    @cars = Car.all
  end
end
