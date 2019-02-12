class Partners::SessionsController < Devise::SessionsController
  
  private
  
  def after_sign_in_path_for(resource)
    clients_path
  end
  
  def after_sign_out_path_for(resource)
    new_partner_session_path
  end  
end 
