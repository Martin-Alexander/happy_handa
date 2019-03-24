Rails.application.routes.draw do
  devise_for :user
  root 'static_pages#home'
  get '/about', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/goals', to: 'goals#index' # list of calendar / days of the week
  get '/goals/all', to: 'goals#show' # list of all goals
  get '/goals/new', to: 'goals#new' # rendering the form for a new goal
  post '/goals', to: 'goals#create' # add a new goal to DB
  get '/goals/:id/edit', to: 'goals#edit' # rendering the form to edit a goal
  patch '/goals/:id', to: 'goals#update' # edit a goal in the DB
end
