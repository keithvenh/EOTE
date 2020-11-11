class PlanetsController < ApplicationController
  def index
    @planets = Planet.all.order('name ASC')
  end

  def new
    @planet = Planet.new
  end
  
  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to @planet
    else
      render 'new'
    end
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    if @planet.update_attributes(planet_params)
      redirect_to @planet
    else
      render 'edit'
    end
  end

  def destroy
    Planet.find(params[:id]).destroy
    redirect_to planets_url
  end

  private

    def planet_params
      params.require(:planet).permit(:name, :system, :sector, :region, :year, :day, :population)
    end
end