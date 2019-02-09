class PagesController < ApplicationController
   def index
      if partner_signed_in? && current_partner
         render partial: "pages/dashboard"
      else
         render template: "pages/index"
      end
   end
end