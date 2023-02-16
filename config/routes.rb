Rails.application.routes.draw do
  resources :jobs
  root 'jobs#index'
  get 'hamlet/home'
  get 'hamlet/legal'
  get 'hamlet/privacy'
  get 'hamlet/supplychaincoordinator'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
