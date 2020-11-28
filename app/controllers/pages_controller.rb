class PagesController < ApplicationController

  def index
    @rolls = Roll.all
  end

  def about
  end

  def help
  end

  def store
    @weapons = Weapon.all.order('cost ASC')
    @equipment = Equipment.all.order('cost ASC')
    @armor = Armor.all.order('cost ASC')
    @mods = Modification.all.order('cost ASC')
    @char = Character.find(params[:character_id])
  end

  def gear
    @armor = Armor.all.order('name ASC')
    @mods = Modification.all.order('name ASC')
    @gear = Equipment.all.order('name ASC')
    @weapons = Weapon.all.order('name ASC')
  end

  def stats
  end

  def dice
  
  end

end
