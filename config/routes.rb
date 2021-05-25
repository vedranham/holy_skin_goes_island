Rails.application.routes.draw do
  # index
  get "/", to: 'islands#index'
 # show
 get 'islands/:id', to: 'island#show', as: :island
 #edit
  get 'islands/:id/edit', to: 'islands#edit'
 #update
 patch 'islands/:id', to: 'islands#update'
end
