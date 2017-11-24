class WebsitesController < ApplicationController
  layout 'builder'

  def index
    @websites = current_user.websites
  end

  def edit
    @templates = Template.all
    @website = Website.find(params[:id])
  end

  def update
    @website = Website.find(params[:id])
    @website.update(website_params)
    raise
    if @website.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'update' }
        format.js
      end
    end
    # redirect_to edit_website_path(@website)
  end

  def create
    @website = current_user.websites.create(template: random_template)
    redirect_to edit_website_path(@website)
  end

  # GET /websites/:id/template => { template: ":template_slug"}
  def template
    @website = Website.find(params[:id])
    template_slug = params[:template_slug]
    template_html = render_to_string partial: "templates/#{template_slug}", website: @website
    render json: { html: template_html }.to_json
  end

  private

  def website_params
    params.require(:website).permit(:template_id)
  end

  def random_template
    Template.all.sample
  end
end
