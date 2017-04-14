Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  resources :galleries
  root "posts#index"

  get '/history' , to: 'static_pages#history'
  get '/gallery' , to: 'static_pages#gallery'
  get '/schedule' , to: 'static_pages#schedule'
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  get '/timetable' , to: 'timetable#show_table'

end
