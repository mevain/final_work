class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_locale
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
   end
   protected

    def default_url_options
        { host: 'localhost', port: 3000, locale: I18n.locale }
    end

    def set_locale
        I18n.locale = :ru
    end

    def extract_locale
        parsed_locale = params[:locale]
        return unless I18n.available_locales.map(&:to_s).include?(parsed_locale)

        parsed_locale.to_sym
    end

end
