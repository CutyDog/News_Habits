class CreateReadLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :read_log_news_items do |t|
      t.integer :user_id, null: false
      t.integer :news_item_id, null: false
      t.datetime :created_at, null: false

      t.timestamps
      
      t.index :user_id
      t.index :news_item_id
      t.index :created_at
    end
  end
end
