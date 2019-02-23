Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles
  resources :articles, only: [:new, :create, :show] do
    resources :comments
  end
end