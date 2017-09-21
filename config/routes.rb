Rails.application.routes.draw do
  resources :contacts
  resources :client_feedbacks
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  root 'home#index'
  get '/work' => 'home#work'
  get '/insight' => 'home#insight'
  get '/solution' => 'home#solution'
  get '/company' => 'home#company'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
