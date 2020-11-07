class CharacterWeaponsController < ApplicationController
  before_action :get_character

  def index
    redirect_to character_gear_url(@char)
  end

  def new
    @weapon = Weapon.find(params[:weapon_id])
    @char_weapon = CharacterWeapon.new
  end

  def create
    @char_weapon = CharacterWeapon.new(character_weapon_params)
    if @char_weapon.save
      redirect_to character_gear_url(@char)
    else
      render 'new'
    end
  end
  
  def show
    @char_weapon = CharacterWeapon.find(params[:id])
  end

  def edit
    @char_weapon = CharacterWeapon.find(params[:id])
    @weapon = Weapon.find(@char_weapon.weapon_id)
  end

  def update
    @char_weapon = CharacterWeapon.find(params[:id])
    @weapon = Weapon.find(@char_weapon.weapon_id)
    if @char_weapon.update_attributes(character_weapon_params)
      redirect_to character_gear_url(@char)
    else
      render 'edit'
    end
  end

  def destroy
    CharacterWeapon.find(params[:id]).destroy
    redirect_to character_gear_url(@char)
  end

  private

    def character_weapon_params
      params.require(:character_weapon).permit(:character_id, :weapon_id, :quantity, :brand)
    end

    def get_character
      @char = Character.find(params[:character_id])
    end
  
end
