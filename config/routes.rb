Rails.application.routes.draw do
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users

end
