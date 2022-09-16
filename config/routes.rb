Rails.application.routes.draw do

  # get, post, patch, delete

  get '/cartoons', to: 'cartoons#index'

  get '/games', to: 'games#index'

  get '/quotes', to: 'quotes#index'

  get '/cartoons/:id', to: 'cartoons#show'

  get '/games/:id', to: 'games#show'

  get '/quotes/:id', to: 'quotes#show'

end


