Rails.application.routes.draw do
 
    resources :ss
	  root 'ss#First'
  get 'ss/First'
  post 'ss/First'
  get 'main/test'
  post 'main/test'
  get 'main/test2'
  post 'main/test2'
  get 'sub/Second'
  post 'sub/Second'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
