Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :prospects, only: [ :index, :show, :new, :create, :update, :edit ] do
    resources :comments, only: [ :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
