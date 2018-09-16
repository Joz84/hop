class PagesController < ApplicationController
  before_action :set_tenant, only: [:events]
  skip_before_action :authenticate_user!, only: [:home, :events]

  def home
  end

  def events
    @events = Event.all
    @website = Website.find_by(url: current_tenant)
  end
end
