Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :edit, :update]
  resources :itineraries, only:[:show, :edit, :update] do
    resources :activities, only:[:show, :edit, :update]
  end
end
