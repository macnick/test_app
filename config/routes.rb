Rails.application.routes.draw do

  resources :articles
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resources :users, except: [:new]
  
end
