class OmniauthCallbacksController < ApplicationController
  def twitter
    # user = User.find_for_oauth(request.env["omniauth.auth"])
    user = User.find_for_oauth(request.env["omniauth.auth"])
     puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
     puts user.inspect
     puts "----------------------"
     puts user.persisted?
     puts "----------------------"
     puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    if user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Twitter"
      sign_in_and_redirect user, :event => :authentication
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")
      redirect_to new_user_registration_url
    end
  end

end
