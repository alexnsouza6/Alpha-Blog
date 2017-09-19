Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about', to: 'pages#about'


resources :articles

get 'signup', to: 'users#new'
resources :users, except: [:new]
#post 'users', to: 'users#create' ---> This command does the same as the command above

end
