Rails.application.routes.draw do
  # index
 get "islands", to: 'islands#index'
 # show
 get 'islands/:id', to: 'islands#show', as: :island
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
