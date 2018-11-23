Rails.application.routes.draw do
  get 'foo/bar'
  get 'foo/baz'
  get 'foo/biz'

  # root 'static_pages#home'
  # get  'static_pages/home'
  # get  'static_pages/help'
  # get  'static_pages/about'
  # get  'static_pages/contact'
  # get  'static_pages/login'
  # get 'users/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about',to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'static_pages#login'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users
end
