class WebsitesController < ApplicationController
  layout 'website', only: [:redirect]
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
    @template = Template.find(params[:website][:template_id])
    @website.template = @template
    @website.update(website_params)

    # if @website.save
    #   respond_to do |format|
    #     format.html { redirect_to root_path }
    #     format.js
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render 'update' }
    #     format.js
    #   end
    # end
    # redirect_to edit_website_path(@website)

    respond_to do |format|
      format.html { redirect_to edit_website_path(@website) }
      format.js
    end

  end

  def create
    @website = current_user.websites.create(template: Template.first)
    redirect_to edit_website_path(@website)
  end

  # GET /websites/:id/template => { template: ":template_slug"}
  def template
    @website = Website.find(params[:id])
    template_slug = params[:template_slug]
    template_html = render_to_string partial: "templates/#{template_slug}", website: @website
    render json: { html: template_html }.to_json
  end

  def redirect
    @website = Website.find_by_url(params[:url])
  end

  private

  def website_params
    params.require(:website).permit(:template_id,
                                    :title,
                                    :description,
                                    :background_image,
                                    :profile_image,
                                    :facebook_url,
                                    :twitter_url,
                                    :email,
                                    :url)
  end

  def random_template
    Template.all.sample
  end
end
