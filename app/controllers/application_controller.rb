class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  layout :layout

  attr_reader :current_tenant

  def layout
    if devise_controller?
      'devise'
    else
      'application'
    end
  end

  private

  def set_tenant
    @current_tenant = request.subdomains.first
  end

  def tenant_url(tenant = request.subdomains.first)
    [tenant, *request.subdomains[1..-1], request.domain].join('.')
  end
end
