Rails.application.routes.draw do
  root to: 'home#top'
  get '/about', to: "home#about"

  resources :sessions, only: [:new, :create, :show, :destroy]

  resources :users, only: [:new, :create, :show, :edit, :index] do
    collection do
      post :confirm
    end
  end

  resources :posts do
    collection do
      post :confirm
    end
  end
end
