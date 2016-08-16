Rails.application.routes.draw do
  root 'homepage#homepage'
  get "/" => 'hompage#hompage', as: :home

  post 'contact' => 'homepage#create', as: :new_contact

  get 'blog/new' => 'blogs#new', as: :new_blog
  post 'blog' => 'blogs#create', as: :create_blog
  get 'blog' => 'blogs#index', as: :blogs
  get 'blog/:id' => 'blogs#show', as: :blog


  get "sign_in" => "sessions#new", as: :sign_in
  post "sign_in" => "sessions#create"
  delete "sign_in" => "sessions#delete"

  get "registration" => "users#new",  as: :new_user
  post "registration" => "users#create", as: :create_user
end
