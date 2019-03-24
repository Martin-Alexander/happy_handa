Rails.application.routes.draw do
  devise_for :user
  root 'static_pages#home'
  resources :goals do
  end
end
