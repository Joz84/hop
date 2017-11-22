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
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def website_params
    params.require(:website).permit(:template_id)
  end
end
