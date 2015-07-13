RailStrap::Application.routes.draw do



  # devise_for :users, :controllers => { :registrations => :registrations }
  # devise_for :admins

  get '/graph' => 'graph#index', as: :index

  resources :home, only: :index
  resources :admins

  root to: "graph#index"

end
