class RegistrationsController < Devise::RegistrationsController
 def new
   build_resource({})
   resource.build_profile 
   respond_with self.resource
 end
 
 private
 
  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:email, :password, profile_attributes: [:firstname, :lastname, :bio, :profile_picture])
  end
end