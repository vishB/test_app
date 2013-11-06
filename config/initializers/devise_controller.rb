DeviseController.class_eval do
  def resource_params
    unless params[resource_name].blank?
      params.require(resource_name).permit(:name,:email, :password, :password_confirmation, :remember_me, :provider, :uid)
    end
  end
end

