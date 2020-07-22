Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #  get 'pages/home', to: 'pages#home'
    #get 'pages/about', to: 'pages#about'
    get 'about', to: 'pages#about'
    root :to => 'pages#home'
    #resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] ##This will give all the articles routes that we need for articles or
    resources :articles ##provide all the rest-ful resources for articles(routes rails resources)
  #  get 'articles/:id/edit', to: 'articles#edit'
#    patch 'articles/:id', to: 'articles#update'

end
