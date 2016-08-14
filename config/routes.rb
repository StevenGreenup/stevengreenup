Rails.application.routes.draw do
  root 'homepage#homepage'
  get 'contact' => 'homepage#new', as: :contact
  post 'contact' => 'homepage#create', as: :new_contact
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
