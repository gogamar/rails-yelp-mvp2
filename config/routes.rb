Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show, :edit] do
    resources :reviews, only: [:index, :new, :create]
  end
end
