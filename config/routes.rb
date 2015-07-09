RailStrap::Application.routes.draw do



  devise_for :users, :controllers => { :registrations => :registrations }
  devise_for :admins

  get '/token' => 'home#token', as: :token

  resources :home, only: :index
  resources :admins

  root to: "dashboard#index"



end
