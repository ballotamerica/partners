class Partners::SessionsController < Devise::SessionsController
  
  protected
  
  def after_sign_in_path_for(resource)
    partners_clients_path
  end
end 
