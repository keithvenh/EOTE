class PagesController < ApplicationController
  def index
    @user = current_user
    @character = Character.find_by(name: @user.username)
  end

  def about
  end

  def help
  end
end
