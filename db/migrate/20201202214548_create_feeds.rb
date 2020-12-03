class CreateFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.string :username, null: false, default:"HUB"
      t.string :body, null: false
      t.integer :likes_count, null: false, default: 0
      t.integer :reposts_count, null: false, default: 0

      t.timestamps
    end
  end
end
