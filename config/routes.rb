Auth::Application.routes.draw do
  resources :users
  resources :sessions

  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", as: "sign_up"
  get "log_out" => "sessions#destroy", :as => "log_out"

  root to: "users#new"
end
