class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true
    before_action :authenticate_user!
    before_action :set_global_user

    def set_global_user
        @user = current_user
        @character = Character.find_by(name: @user.username)
    end
end
