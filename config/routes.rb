NnteDebet::Application.routes.draw do
  get "courts" => "courts#index"

  resources :users
  resources :finances
  resources :dolgs
  resources :proplatis
  resources :ilists
  resources :delos do
    put :vsud, :on => :member
  end


  resources :agents
  resources :houses
  resources :dogovors
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new'

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
end
