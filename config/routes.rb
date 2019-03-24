Rails.application.routes.draw do
  get 'goals/new'
  root 'static_pages#home'
  get 'about', to: 'static_pages#home'
  get 'contact', to: 'static_pages#contact'
  devise_for :user
end
