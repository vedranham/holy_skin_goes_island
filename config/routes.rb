Rails.application.routes.draw do
  devise_for :users
  # index
  root to: "islands#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :islands, except: :index

  resources :dashboard, only: :index

end
