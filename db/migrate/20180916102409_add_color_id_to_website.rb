class AddColorIdToWebsite < ActiveRecord::Migration[5.1]
  def change
    add_column :websites, :color_id, :string
  end
end
