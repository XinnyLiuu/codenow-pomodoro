Rails.application.routes.draw do
  get 'todo/new', to: 'todo#new'
  get 'todo/create', to: 'todo#create'
  get 'todo/show/:id', to: 'todo#show'
  root to: 'todo#index'
end
