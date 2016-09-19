Rails.application.routes.draw do
  #get 'bookings/index'
  #get 'bookings/edit'
  #get 'bookings/show'
  resources :bookings

  resources :customers do
    collection do
      get '/customer_lists', to: 'customers#customer_lists', as: :user
    end
  end

  devise_for :users
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
