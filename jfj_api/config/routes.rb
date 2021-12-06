Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    scope '/auth' do
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
    end
      get '/castles', to: 'castles#index'
      post '/castles', to: 'castles#create'
      get '/castles/:id', to: 'castles#show'
      put '/castles/:id', to: 'castles#update'
      delete '/castles/:id', to: 'castles#destroy'
  end
end
