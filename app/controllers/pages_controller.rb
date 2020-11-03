class PagesController < ApplicationController

  def index
    @characters = Character.all.order("name ASC")
    @planets = Planet.all.order("name ASC")
    @vehicles = Vehicle.all.order("name ASC")
    @contacts = Contact.all
  end

  def about
  end

  def help
  end

  def store
    @weapons = Weapon.all.order('cost ASC')
    @equipment = Equipment.all.order('cost ASC')
    @armor = Armor.all.order('cost ASC')
  end
end
