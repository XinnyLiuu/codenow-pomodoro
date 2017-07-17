Rails.application.routes.draw do
  get 'todo/index', to: 'todo#index'
  get 'show/index', to: 'show#index'
end
