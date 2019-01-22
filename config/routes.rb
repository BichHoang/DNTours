Rails.application.routes.draw do
  resources :news
  resources :locals
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  delete  "delete"   => "users#destroy"
  resources :users

  get 'home/index'
  get 'home/bookingtours'
  get 'home/booking'
  root 'home#index'

  resources :bookings

  resources :tours do
     resources :bookings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
