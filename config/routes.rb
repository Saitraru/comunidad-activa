Rails.application.routes.draw do
  resources :payments
  resources :documents
  resources :units
  resources :phones
  resources :users
  resources :payment_methods
  resources :expenses
  resources :phone_suppliers
  resources :suppliers
  resources :supplier_types
  resources :document_types
  resources :months
  resources :years
  resources :motives
  resources :fees
  resources :roles
  resources :addresses
  resources :cities
  resources :regions
  resources :communes
  resources :zip_codes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
