class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    acts_as_token_authentication_handler_for User, fallback: :none
end
