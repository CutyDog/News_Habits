class CreateNewsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :news_items do |t|
      t.integer :news_site_id, null: false
      t.string :title, null: false
      t.string :category, null: false
      t.text :description, null: false
      t.text :link, null: false
      t.datetime :published_at, null: false

      t.timestamps
      
      t.index :news_site_id
      t.index :published_at
      t.index :link, unique: true
      t.index :category
    end
  end
end
