Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  # root "posts#index"
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  # Custom routes
  resources :stories, only: [:new, :create, :index] do
    resources :chat, only: [:create, :show]

    member do
      get :assessment
    end
  end
end
