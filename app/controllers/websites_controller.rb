class WebsitesController < ApplicationController
  layout 'builder'

  def edit
    @website = Website.find(website_params)
  end

  def update

  end

  def new
    # @templates = Template.all
    # @website = Website.new
    website = Website.new(template_id: 1, user_id: current_user.id)
    website.save
    redirect_to edit_website_path(website)
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
    ActionController::Parameters.permit_all_parameters = true
    # params.require(:website).permit(:template_id, :id)
  end
end
