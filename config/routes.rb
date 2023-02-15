Rails.application.routes.draw do
  resources :jobs
  get 'hamlet/home'
  get 'hamlet/legal'
  get 'hamlet/privacy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
