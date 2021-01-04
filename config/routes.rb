Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :artpieces
      resources :categories
      resources :tours
      resources :capture_images
      post '/auth', to: 'auth#create'
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
