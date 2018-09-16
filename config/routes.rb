Rails.application.routes.draw do
  mount Attachinary::Engine => '/attachinary'

  devise_for :users

  constraints lambda { |req| (req.subdomains - ['build']).any? } do
    root to: 'websites#show'
    get 'edit', to: 'websites#edit', as: 'edit_own_website'
    patch '/', to: 'websites#update', as: 'own_website'

    get 'events', to: 'pages#events'
  end

  constraints subdomain: 'build' do
    root to: 'pages#home'
    resources :websites, only: [:new, :create, :edit, :update]
  end
end
