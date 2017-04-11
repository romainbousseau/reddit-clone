Rails.application.routes.draw do
  get 'upvotes/create'

  get 'upvotes/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "subjects#index"
  resources :subjects do
    resources :messages
    resources :upvotes, only: [:create, :destroy]
  end
end
