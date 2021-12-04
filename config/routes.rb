Rails.application.routes.draw do
  resources :posts do 
    get '/comments', to: 'comments#index', as: 'comments'
    post '/comments', to: 'comments#create'
    get '/comments/new', to: 'comments#new', as: 'new_comment'
    get 'comments/:id', to: 'comments#show', as: 'comment'
    get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
    patch '/comments/:id', to: 'comments#update'
    delete '/comments/:id', to: 'comments#destroy'
  end 

  # or just replace the above line of code as follows:
  # resources :posts do 
    # resources :comments
  # end


  # # get requests for the /pages path should go to
  # # the PagesController's index method 
  # get '/pages', to: 'pages#index'

  # # to get the form
  # get '/pages/new', to: 'pages#new', as: 'new_page'

  # get '/pages/:id', to: 'pages#show', as: 'page'

  # post '/pages/', to: 'pages#create'

  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'

  # patch '/pages/:id', to: 'pages#update', as: 'update_page'

  # delete '/pages/:id', to: yarn remove @rails/webpacker'pages#destroy', as: 'destroy_page'

  resources :pages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
