Rails.application.routes.draw do
  # index
  get "/", to: 'islands#index'
 # show
 get 'islands/:id', to: 'island#show', as: :island
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
