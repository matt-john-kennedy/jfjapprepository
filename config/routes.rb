Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/update'
  get 'bookings/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    get '/castles', to: 'castles#index'
    post '/castles', to: 'castles#create'
    get '/castles/:id', to: 'castles#show'
    put '/castles/:id', to: 'castles#update'
    delete '/castles/:id', to: 'castles#destroy'
    
    # routes for all customers
    get '/customers', to: 'customers#index'
    post '/customers', to: 'customers#create'
    get '/customers/:id', to: 'customers#show'
    put '/customers/:id', to: 'customers#update'
    delete '/customers/:id', to: 'customers#destroy'
    
    # routes for all enquiries
    get 'enquiries', to: 'enquiries#index'
    post 'enquiries', to: 'enquiries#create'
    get 'enquiries/:id', to: 'enquiries#show'
    put 'enquiries/:id', to: 'enquiries#update'
    delete 'enquiries/:id', to: 'enquiries#destroy'

    # routes for all bookings
    get 'bookings', to: 'bookings#index'
    post 'bookings', to: 'bookings#create'
    get 'bookings/:id', to: 'bookings#show'
    put 'bookings/:id', to: 'bookings#update'
    delete 'bookings/:id', to: 'bookings#destroy'

      scope '/auth' do
        post '/sign_up', to: 'users#create'
        post '/sign_in', to: 'users#sign_in'
      end

  end
end
