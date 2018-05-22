Rails.application.routes.draw do
  #get 'tasks', to: 'tasks#index'
  #get 'tasks/new', to: 'tasks#new', as: :new_task # C
  #get 'tasks/:id', to: 'tasks#show', as: :task # R
  #post 'tasks', to: 'tasks#create' # C
  #get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # U
  #patch 'tasks/:id', to: 'tasks#update' # U
  #delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task # D
  resources :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
