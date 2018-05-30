Rails.application.routes.draw do
  root 'clients#index'



  get'/about', to:'static_clients#about'

  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
