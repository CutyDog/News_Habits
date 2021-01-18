class CreateNewsSites < ActiveRecord::Migration[5.0]
  def change
    create_table :news_sites do |t|
      t.string :title, null: false
      t.text :rss_url, null: false
      

      t.timestamps
      
      t.index :rss_url, unique: true
    end
  end
end
