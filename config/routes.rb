Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :websites, only: [:index, :show, :create, :edit, :update] do
    member do
      get 'template' => 'websites#template'
    end
  end

  get '/:url' => 'websites#show'
end
