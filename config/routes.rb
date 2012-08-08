Auth::Application.routes.draw do
  root :to => "users#index"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :sessions
    end
  end

  resources :users
end
