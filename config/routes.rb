Rails.application.routes.draw do
  resources :lakesides
  resources :riversides
  #get 'bookings/index'
  #get 'bookings/edit'
  #get 'bookings/show'
  resources :bookings do
    collection do
      post :import
      get :autocomplete
    end
  end

  resources :customers do
    collection do
      get '/customer_lists', to: 'customers#customer_lists', as: :user
    end
  end

  devise_for :users
  root 'static_pages#home'

  post "post_booking" => "lakesides#post_booking"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
