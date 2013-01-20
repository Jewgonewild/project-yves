Board::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  match '/home/index' => "home#index"

  authenticated :user do
    root :to => "posts#index"
  end
  root :to => "posts#index"
  devise_for :users
  resources :users
end