Rails.application.routes.draw do
  root "application#index"
  
  devise_for :partners, controllers: { sessions: 'partners/sessions' }
  
  resources :clients do
    resources :invoices
  end  
end
