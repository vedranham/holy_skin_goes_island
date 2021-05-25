Rails.application.routes.draw do
  # index
  get "/", to: 'islands#index'

  get 'islands/new', to: 'islands#new'
  post 'islands', to: 'islands#create'
 # show
 get 'islands/:id', to: 'island#show', as: :island
 #edit
  get 'islands/:id/edit', to: 'islands#edit'
 #update
 patch 'islands/:id', to: 'islands#update'
 #destroy
 delete 'islands/:id', to: 'islands#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
