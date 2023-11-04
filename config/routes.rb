Rails.application.routes.draw do
  get 'dashboard/index'
  resources :manufacturers
  resources :categories
  resources :softwares
  resources :employees
  resources :devices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'search', :to => "search#index"

  # Defines the root path route ("/")
   root "dashboard#index"
end
