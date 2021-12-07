Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    get '/castles', to: 'castles#index'
    post '/castles', to: 'castles#create'
    get '/castles/:id', to: 'castles#show'
    put '/castles/:id', to: 'castles#update'
    delete '/castles/:id', to: 'castles#destroy'
    
    get '/customers', to: 'customers#index'
    post '/customers', to: 'customers#create'
    get '/customers/:id', to: 'customers#show'
    put '/customers/:id', to: 'customers#update'
    delete '/customers/:id', to: 'customers#destroy'
    
    get 'enquiries', to: 'enquiries#index'
    post 'enquiries', to: 'enquiries#create'
    get 'enquiries/:id', to: 'enquiries#show'
    put 'enquiries/:id', to: 'enquiries#update'
    delete 'enquiries/:id', to: 'enquiries#destroy'

      scope '/auth' do
        post '/sign_up', to: 'users#create'
        post '/sign_in', to: 'users#sign_in'
      end

  end
end
