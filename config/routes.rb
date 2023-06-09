Rails.application.routes.draw do
  get 'todolists/new'
  get "top" => "homes#top"
  post "todolists" => "todolists#create"
  get "todolists" => "todolists#index"
  get "todolists/:id" => "todolists#show", as:"todolist"
  get "todolists/:id/edit" => "todolists#edit",as:"edit_todolist"
  patch "todolists/:id" => "todolists#update", as:"update_todolist"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
