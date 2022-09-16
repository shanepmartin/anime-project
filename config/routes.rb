Rails.application.routes.draw do

  resources :cartoons, only: [:index, :show, :create, :update, :destroy]

  resources :games, only: [:index, :show, :create, :update, :destroy]

  resources :quotes, only: [:index, :show, :create, :update, :destroy]


end



