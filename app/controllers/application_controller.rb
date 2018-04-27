class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me,:company_name,:pan_no,
                    :address,:contact_no,:first_name,:last_name,:sex,:phone_no]
    update_attrs = [:username, :email, :password, :password_confirmation, :remember_me,:company_name,:pan_no,
                    :address,:contact_no,:first_name,:last_name,:sex,:phone_no,:photo,:prefered_loc,
                    :experience,:salary,:dob,:nationality,:perm_address, :temp_address,:cv,:job_status,:description,:certificate,:logo
                    ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys:   update_attrs

  end
end
