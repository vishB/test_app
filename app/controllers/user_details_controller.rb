class UserDetailsController < ApplicationController
  def index
    #@photos = Photo.all
    @user_details = current_user.user_details
  end
end
