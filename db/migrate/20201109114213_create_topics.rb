class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :topics_title
      t.string :content
      t.text :description
      t.decimal :duration
      t.string :image_url
      t.string :demonstrator
      t.decimal :package_price, precision: 8, scale: 2
      t.string :queries_email

      t.timestamps
    end
  end
end
