Rails.application.routes.draw do
  root "pages#index"
  
  devise_for :partners, controllers: { sessions: 'partners/sessions' }
  
  resources :clients  
  resources :invoices
end
