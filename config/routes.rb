Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "home/show", to: "home#show"
  get "users/:id", to: "users#show", as: :mypage
  resources :users
  resources :groups, only: [:new, :create, :edit, :update, :destroy] do
    resources :posts, only: [:index, :create, :show]
  end

end