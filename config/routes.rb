Rails.application.routes.draw do
  # index
  get "/", to: 'islands#index'

  get 'islands/new', to: 'islands#new'
 # show
  get 'islands/:id', to: 'islands#show', as: :island
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 # new
  # create
  post 'islands', to: 'islands#create'

end
