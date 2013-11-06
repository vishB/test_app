class SiteController < ApplicationController
  before_filter :authenticate_user!

  def index
    
  end

  def download
    @album =  current_user.albums.all
  end

  def explore

  end

  def share
    
  end
end
