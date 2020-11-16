class ModificationsController < ApplicationController

  def index
    redirect_to gear_url
  end
  
  def new
    @mod = Modification.new
  end

  def create
    @mod = Modification.new(modification_params)
    if @mod.save
      redirect_to @mod
    else
      render 'new'
    end
  end

  def show
    @mod = Modification.find(params[:id])
  end

  def edit
    @mod = Modification.find(params[:id])
  end

  def update
    @mod = Modification.find(params[:id])
    if @mod.update_attributes(modification_params)
      redirect_to @mod
    else
      render 'edit'
    end
  end

  def destroy
    Modification.find(params[:id]).destroy
    redirect_to gear_url
  end

  private

    def modification_params
      params.require(:modification).permit(:name, :restricted, :cost, :encumbrance, :hp_required, :rarity, :brands, :base_modifiers, :mod_options, :attachment_type, :sourcebook)
    end
end
