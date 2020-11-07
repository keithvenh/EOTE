class EquipmentController < ApplicationController
  def index
    redirect_to gear_url
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to @equipment
    else
      render 'new'
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update_attributes(equipment_params)
      redirect_to @equipment
    else
      render 'edit'
    end
  end

  def destroy
    Equipment.find(params[:id]).destroy
    redirect_to gear_url
  end

  private

    def equipment_params
      params.require(:equipment).permit(:name, :restricted, :encumbrance, :cost, :rarity, :description)
    end
end
