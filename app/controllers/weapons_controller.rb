class WeaponsController < ApplicationController
  def index
    redirect_to gear_url
  end

  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.new(weapon_params)
    if @weapon.save
      redirect_to @weapon
    else
      render 'new'
    end
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def update
    @weapon = Weapon.find(params[:id])
    if @weapon.update_attributes(weapon_params)
      redirect_to @weapon
    else
      render 'edit'
    end
  end

  def destroy
    Armor.find(params[:id]).destroy
    redirect_to gear_url
  end

  private

    def weapon_params
      params.require(:weapon).permit(:name, :restricted, :skill, :damage, :crit, :range, :encumbrance, :hard_points, :cost, :rarity, :specials)
    end
end
