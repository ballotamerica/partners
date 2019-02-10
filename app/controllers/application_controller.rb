class ApplicationController < ActionController::Base
    def index
      if partner_signed_in? && current_partner
         render :template => "clients/dashboard"
      else
         render :template => "layouts/splash"
      end        
    end
end
