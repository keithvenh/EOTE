class VehiclesController < ApplicationController
  def index
    @ships = Vehicle.all.order('name ASC')
  end
  
  def new
    @ship = Vehicle.new
  end

  def create
    @ship = Vehicle.new(vehicle_params)
    if @ship.save
      redirect_to @ship
    else
      render 'new'
    end
  end
  
  def show
    @ship = Vehicle.find(params[:id])
  end

  def edit
    @ship = Vehicle.find(params[:id])
  end

  def update
    @ship = Vehicle.find(params[:id])
    if @ship.update_attributes(vehicle_params)
      redirect_to @ship
    else
      render 'edit'
    end
  end

  def destroy
    Vehicle.find(params[:id]).destroy
    redirect_to vehicles_url
  end

  private

    def vehicle_params
      params.require(:vehicle).permit(:name, :manufacturer, :model, :hull_type, :primary_hyperdrive, :secondary_hyperdrive, :navicomputer, :sensor_range, :passenger_capacity, :complement, :cost, :rarity, :hard_points, :capacity, :silhouette, :speed, :handling, :armor, :hull_trauma_threshold, :system_strain_threshold, :defense_fore, :defense_aft, :defense_port, :defense_starboard)
    end
end