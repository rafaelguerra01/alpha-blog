Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #  get 'pages/home', to: 'pages#home'
    #get 'pages/about', to: 'pages#about'
    get 'about', to: 'pages#about'
    root :to => 'pages#home'
    resources :articles, only: [:show] ##This will give all the articles routes that we need for articles
end
