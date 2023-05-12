Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "todos#index"

  resources :todos, only: [:index, :create, :destroy] do
    resource :done, only: [:create, :destroy]
  end

  resource :user_session, only: [:new, :create, :destroy]
end
