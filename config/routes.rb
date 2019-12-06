Rails.application.routes.draw do

  resources :articles
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # get something and take it to:  a controller and an action
  resources :users, except: [:new]
  
end
