class PagesController < ApplicationController
  before_action :set_global_user
  def index
    @user = current_user
    @character = Character.find_by(name: @user.username)
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
