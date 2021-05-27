Rails.application.routes.draw do
  devise_for :users
  # index
  root to: "islands#index"

  resources :islands do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy, :show]
=======
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :dashboard, only: :index

end

#   get "/islands", to: 'islands#index'

#   get '/islands/new', to: 'islands#new'
#   post '/islands', to: 'islands#create'
#  # show
#  get '/islands/:id', to: 'islands#show', as: :island
#  #edit
#   get '/islands/:id/edit', to: 'islands#edit'
#  #update
#  patch '/islands/:id', to: 'islands#update'
#  #destroy
#  delete '/islands/:id', to: 'islands#destroy'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
