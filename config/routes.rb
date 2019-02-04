Rails.application.routes.draw do
  root "pages#index"
  resources :clients  
  resources :invoices

devise_for :partners, controllers: { sessions: 'partners/sessions' }
end
