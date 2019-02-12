Rails.application.routes.draw do
  root 'clients#index'
  
  devise_for :partners, controllers: { sessions: 'partners/sessions', registrations: 'partners/registrations' }
  
  resources :clients do
    resources :invoices
  end  
end
