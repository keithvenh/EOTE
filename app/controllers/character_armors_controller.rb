class CharacterArmorsController < ApplicationController
  before_action :get_character

  def index
    redirect_to character_gear_url(@char)
  end

  def new
    @armor = Armor.find(params[:armor_id])
    @charm = CharacterArmor.new
  end

  def create
    @charm = CharacterArmor.new(character_armor_params)
    if @charm.save
      redirect_to character_gear_url(@char)
    else
      render 'new'
    end
  end
  
  def show
    @charm = CharacterArmor.find(params[:id])
  end

  def edit
    @charm = CharacterArmor.find(params[:id])
    @armor = Armor.find(@charm.armor_id)
  end

  def update
    @charm = CharacterArmor.find(params[:id])
    @armor = Armor.find(@charm.armor_id)
    if @charm.update_attributes(character_armor_params)
      redirect_to character_gear_url(@char)
    else
      render 'edit'
    end
  end

  def destroy
    CharacterArmor.find(params[:id]).destroy
    redirect_to character_gear_url(@char)
  end

  private

    def character_armor_params
      params.require(:character_armor).permit(:character_id, :armor_id, :quantity, :brand)
    end

    def get_character
      @char = Character.find(params[:character_id])
    end
  
end
