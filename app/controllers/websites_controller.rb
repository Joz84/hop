class WebsitesController < ApplicationController
  layout 'builder'

  def edit
    @templates = Template.all
    @website = Website.find(params[:id])
  end

  def update
    @website = Website.find(params[:id])
    @website.update(website_params)
    redirect_to edit_website_path(@website)
  end

  def new
    @templates = Template.all
    @website = Website.new
  end

  def create
    @website = current_user.websites.create(template: Template.first)
    redirect_to edit_website_path(@website)
    # @website = Website.new(website_params)
    # @user = current_user
    # @website.user = @user

    # if @website.save
    #   respond_to do |format|
    #     format.html { redirect_to root_path }
    #     format.js
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render 'new' }
    #     format.js
    #   end
    # end
  end

  private

  def website_params
    params.require(:website).permit(:template_id)
  end
end
