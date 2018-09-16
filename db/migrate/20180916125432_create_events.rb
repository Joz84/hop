class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :city
      t.float :longitude
      t.float :latitude
      t.string :address
      t.date :begin_at
      t.date :end_at
      t.string :sirtaqui_id

      t.timestamps
    end
  end
end
