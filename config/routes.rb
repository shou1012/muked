Rails.application.routes.draw do
    get '/lives', to: 'lives#index'
    get '/:uuid/lives', to: 'lives#show'
    post '/users/new', to: 'users#create'
end
