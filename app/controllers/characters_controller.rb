class CharactersController < ApplicationController
  def index
    @characters = Character.all.order('name ASC')
  end

  def new
    @char = Character.new
  end

  def create
    @char = Character.new(character_params)
    if @char.save
      redirect_to @char
    else
      render 'new'
    end
  end
  
  def show
    @char = Character.find(params[:id])
  end

  def edit
    @char = Character.find(params[:id])
  end

  def update
    @char = Character.find(params[:id])
    if @char.update_attributes(character_params)
      redirect_to @char
    else
      render 'edit'
    end
  end

  def destroy
    Character.find(params[:id]).destroy
    redirect_to characters_url
  end

  private

    def character_params
      params.require(:character).permit(:name, :race, :career, :brawn, :agility, :intellect, :cunning, :willpower, :presence, :soak, :wound_threshold, :strain_threshold, :defense_ranged, :defense_melee)
    end
end
