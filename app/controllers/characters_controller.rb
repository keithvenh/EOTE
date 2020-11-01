class CharactersController < ApplicationController
  
  def index
    @user = current_user
    @character = Character.find_by(name: @user.username)
    @characters = Character.all.order('name ASC')
  end

  def create
  end

  def new
  end

  def show
    @user = current_user
    @character = Character.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private

    def character_params
      params.require(:character)
    end
end
