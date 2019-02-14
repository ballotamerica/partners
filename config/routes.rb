Rails.application.routes.draw do
  root 'pages#splash'
  get 'invoices' => 'invoices#index', as: :invoices
  
  devise_for :partners, controllers: { sessions: 'partners/sessions', registrations: 'partners/registrations' }
  
  resources :clients do
    collection do
      get :active
      get :archive
    end
  end  
  
  resources :invoices do
    collection do
      get :edit
      get :paid
      get :unpaid
      get :draft
    end
  end
end
