class AddBannerDataToWebsites < ActiveRecord::Migration[5.1]
  def change
    add_column :websites, :banner_title, :string
    add_column :websites, :banner_cta, :string
    add_column :websites, :banner_punchline, :string
  end
end
