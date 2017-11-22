class WebsitesController < ApplicationController
  layout 'builder'

  def new
    @templates = Template.all
    @website = Website.new
  end
end
