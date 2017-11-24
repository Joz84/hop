Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :websites, only: [:index, :create, :edit, :update]

  get '/:url' => 'websites#redirect'
end
