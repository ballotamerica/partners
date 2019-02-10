class PagesController < ApplicationController
   def index
      @invoices = Invoice.all
      
      if partner_signed_in? && current_partner
         render :template => "pages/dashboard"
      else
         render :template => "pages/splash"
      end
   end
end