Rails.application.routes.draw do

  get '/', to: 'fruits#index'

  get '/fruits/new', to: 'fruits#new'

  get '/fruits/:id', to: 'fruits#show'

  post '/fruits/', to: 'fruits#create'

  get '/fruits/:id/edit', to: 'fruits#edit'

  put '/fruits/:id', to: 'fruits#update'

  delete 'fruits/:id', to: 'fruits#destroy'

  resources :bikes
  resources :bugs
end
