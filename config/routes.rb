Rails.application.routes.draw do
  mount Attachinary::Engine => '/attachinary'

  devise_for :users

  constraints lambda { |req| (req.subdomains - ['build']).any? } do
    root to: 'websites#show'
    get 'edit', to: 'websites#edit', as: 'edit_website'
    post '/', to: 'websites#update', as: 'website'

  end

  constraints subdomain: 'build' do
    resources :websites, only: [:create]
  end
end
