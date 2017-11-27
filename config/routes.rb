Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'

  resources :websites, only: [:index, :create, :edit, :update] do
    member do
      get "template" => "websites#template"
    end
  end

  get '/:url' => 'websites#redirect'

end
