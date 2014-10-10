class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token, :only => [:create, :show ]

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :username, :role) }
  end

  def after_sign_in_path_for(resource)
    if current_user.role == "seeker"
      current_user.seeker.present? ? home_seekers_path : new_seeker_path
    else
      current_user.employer.present? ? home_employers_path : new_employer_path
    end
  end
  
end
