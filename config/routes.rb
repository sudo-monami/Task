Rails.application.routes.draw do
  root 'pages#index'
  get 'sessions/new'
  get 'users/new'
  resources :users
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  resources :tasks
  get 'tasks/sort' => 'tasks#sort'
  get 'tasks/search' => 'tasks#search'
  get 'tasks/:id/detail' => 'tasks#detail', as: :tasks_detail 
end
