class PagesController < ApplicationController
  def index
    @user = current_user
    @character = Character.find_by(name: @user.username)
    @weapons = Weapon.all
  end

  def about
  end

  def help
  end
end
