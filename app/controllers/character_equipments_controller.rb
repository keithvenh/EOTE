class CharacterEquipmentsController < ApplicationController
  before_action :get_character

  def index
    redirect_to character_gear_url(@char)
  end

  def new
    @equipment = Equipment.find(params[:equipment_id])
    @char_equipment = CharacterEquipment.new
  end

  def create
    @char_equipment = CharacterEquipment.new(character_equipment_params)
    if @char_equipment.save
      redirect_to character_gear_url(@char)
    else
      render 'new'
    end
  end

  def show
    @char_equipment = CharacterEquipment.find(params[:id])
  end

  def edit
    @char_equipment = CharacterEquipment.find(params[:id])
    @equipment = Equipment.find(@char_equipment.equipment_id)
  end

  def update
    @char_equipment = CharacterEquipment.find(params[:id])
    @equipment = Equipment.find(@char_equipment.equipment_id)
    if @char_equipment.update_attributes(character_equipment_params)
      redirect_to character_gear_url(@char)
    else
      render 'edit'
    end
  end

  def destroy
    CharacterEquipment.find(params[:id]).destroy
    redirect_to character_gear_url(@char)
  end

  private

    def character_equipment_params
      params.require(:character_equipment).permit(:character_id, :equipment_id, :quantity, :brand)
    end

    def get_character
      @char = Character.find(params[:character_id])
    end
end
