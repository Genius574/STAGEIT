Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'bookings/create'
  # get 'bookings/edit'
  # get 'bookings/update'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :items, only: %i[index show new create] do
    resources :bookings, except: [:index]
  end

  resources :bookings, only: [:index] do
    member do
      patch :approve
      patch :decline
    end
  end
  # resources :bookings, only: %i[index]
end
