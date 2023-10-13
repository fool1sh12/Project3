Rails.application.routes.draw do
  resources :categories
  resources :softwares
  resources :employees
  resources :devices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
   root "devices#index"
end
