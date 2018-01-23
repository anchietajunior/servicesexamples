Rails.application.routes.draw do
  resources :service_invoices
  resources :payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
