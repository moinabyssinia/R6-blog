Rails.application.routes.draw do
  resources :posts

  # # get requests for the /pages path should go to
  # # the PagesController's index method 
  # get '/pages', to: 'pages#index'

  # # to get the form
  # get '/pages/new', to: 'pages#new', as: 'new_page'

  # get '/pages/:id', to: 'pages#show', as: 'page'

  # post '/pages/', to: 'pages#create'

  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'

  # patch '/pages/:id', to: 'pages#update', as: 'update_page'

  # delete '/pages/:id', to: 'pages#destroy', as: 'destroy_page'

  resources :pages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
