Rails.application.routes.draw do
  get 'posts/new' => 'posts#new'
  get 'posts/index' 
  post "posts/create" => "posts#create"

  post "events/:id/update" => "events#update"
  get "events/:id/edit" => "events#edit"
  post "events/create" => "events#create"
  get "events/new" => "events#new"
  get 'events/index' => 'events#index'
  get 'events/:id' => 'events#show'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
