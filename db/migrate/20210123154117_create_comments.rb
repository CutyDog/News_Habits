class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :news_item_id
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
      
      t.index :news_item_id
    end
  end
end
