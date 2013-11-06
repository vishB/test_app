class FriendsController < ApplicationController
  def index
    @friends = current_user.friends.all
    @users = User.all
  end

  def invitation
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    puts "got the invitation"
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  end
  
end
