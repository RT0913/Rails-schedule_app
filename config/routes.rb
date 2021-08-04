Rails.application.routes.draw do
  get "tasks/index" => "tasks#index"
  get "tasks/new" => "tasks#new"
  get "tasks/:id" => "tasks#show"
  post "tasks/create" => "tasks#create"
  get "tasks/:id/edit" => "tasks#edit"
  post "tasks/:id/update" => "tasks#update"
  get "tasks/:id/destroy" => "tasks#destroy"
  
  resources :tasks
end
