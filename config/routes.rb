Rails.application.routes.draw do
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: :book
  get 'books/:id/edit' => 'books#edit', as: :edit
  get '/top' => 'homes#top'
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update', as: :update_book
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
