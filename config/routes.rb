Rails.application.routes.draw do
  mount Attachinary::Engine => '/attachinary'

  devise_for :users

  root to: 'websites#show', constraints: lambda { |req| req.subdomains.any? }

  resources :websites, only: [:index, :show, :create, :edit, :update] do
    member do
      get 'template' => 'websites#template'
    end
  end
end
