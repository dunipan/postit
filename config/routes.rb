PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get '/register', to: 'users#new' #creates a new register route, register path
  get '/login', to: 'sessions#new' #defaults to session route new every time you login 
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #get '/posts', to: 'posts#index'
  #get '/posts/:id', to: 'posts#show'

  resources :posts, except:[:destory] do 
  	member do 
  		post 'vote'
 		end

  	resources :comments, only:[:create]
  end

  resources :categories
  resources :users, only:[:show, :update, :edit, :create]
end
