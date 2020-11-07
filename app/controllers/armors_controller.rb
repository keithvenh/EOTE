class ArmorsController < ApplicationController

  def index
    redirect_to gear_url
  end

  def new
    @armor = Armor.new
  end

  def create
    @armor = Armor.new(armor_params)
    if @armor.save
      redirect_to @armor
    else
      render 'new'
    end
  end

  def show
    @armor = Armor.find(params[:id])
  end

  def edit
    @armor = Armor.find(params[:id])
  end

  def update
    @armor = Armor.find(params[:id])
    if @armor.update_attributes(armor_params)
      redirect_to @armor
    else
      render 'edit'
    end
  end

  def destroy
    Armor.find(params[:id]).destroy
    redirect_to gear_url
  end

  private

    def armor_params
      params.require(:armor).permit(:name, :restricted, :defense, :soak, :cost, :encumbrance, :rarity, :description, :hard_points, :brands)
    end
end