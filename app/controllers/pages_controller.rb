class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :events]

  def home
  end

  def events
    @events = Event.all
  end
end
