class CharacterModificationsController < ApplicationController
  before_action :get_character

  def index
    redirect_to character_gear_url(@char)
  end

  def new
    @mod = Modification.find(params[:modification_id])
    @char_mod = CharacterModification.new
  end

  def create
    @char_mod = CharacterModification.new(character_modification_params)
    if @char_mod.save
      redirect_to character_gear_url(@char)
    else
      render 'new'
    end
  end

  def show
    @char_mod = CharacterModification.find(params[:id])
    @mod = @char_mod.modification
  end

  def edit
    @char_mod = CharacterModification.find(params[:id])
    @mod = Modification.find(@char_mod.modification_id)
  end

  def update
    @char_mod = CharacterModification.find(params[:id])
    @mod = Modification.find(@char_mod.modification_id)
    if @char_mod.update_attributes(character_modification_params)
      redirect_to character_gear_url(@char)
    else
      render 'edit'
    end
  end

  def destroy
    CharacterModification.find(params[:id]).destroy
    redirect_to character_gear_url(@char)
  end

  private

    def character_modification_params
      params.require(:character_modification).permit(:character_id, :modification_id, :quantity, :brand)
    end

    def get_character
      @char = Character.find(params[:character_id])
    end
end
