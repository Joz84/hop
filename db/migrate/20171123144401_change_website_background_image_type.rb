class ChangeWebsiteBackgroundImageType < ActiveRecord::Migration[5.1]
  def change
    change_column :websites, :background_image, :string
  end
end
