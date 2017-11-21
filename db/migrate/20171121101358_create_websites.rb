class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.string :title
      t.binary :background_image
      t.binary :profile_image
      t.text :description
      t.string :facebook_url
      t.string :twitter_url
      t.string :email
      t.string :url
      t.references :user, foreign_key: true
      t.references :template, foreign_key: true

      t.timestamps
    end
  end
end
