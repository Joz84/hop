class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  layout :layout

  def layout
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
