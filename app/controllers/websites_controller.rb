class WebsitesController < ApplicationController
  layout 'builder'

  def new
    @templates = Template.all
    @website = Website.new
  end

  def create
    @website = Website.new(website_params)
    @user = current_user
    @website.user = @user

    if @website.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.js
      end
    end
  end

  private

  def website_params
    params.require(:website).permit(:template_id)
  end
end
