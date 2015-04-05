Rails.application.routes.draw do
  get 'welcome/index'

  get 'users/new'
  get 'sessions/new'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "post" => "posts#index", :as => "post"
#  root :to => "users#new"
  get "welcome" => "welcome#index", :as => "welcome"
  root :to => "welcome#index"
  resources :users
  resources :sessions

  resources :uploads

  resources :comments

  resources :posts do 
    resources :comments
  end

end
