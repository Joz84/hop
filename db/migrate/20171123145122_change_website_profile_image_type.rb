class ChangeWebsiteProfileImageType < ActiveRecord::Migration[5.1]
  def change
    change_column :websites, :profile_image, :string
  end
end
