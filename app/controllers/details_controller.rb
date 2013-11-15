class DetailsController < ApplicationController
  def index
  	@user_details = current_user.detail
  end	
end
