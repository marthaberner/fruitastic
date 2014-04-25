Rails.application.routes.draw do

  get '/', to: 'fruits#index'

  get '/fruits/new', to: 'fruits#new'

  post '/fruits/create', to: 'fruits#create'

  get '/fruits/:id', to: 'fruits#show'

  get '/fruits/:id/edit', to: 'fruits#edit'

  put '/fruits/:id', to: 'fruits#update'

end
