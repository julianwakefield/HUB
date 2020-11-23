class CreateLinkToConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :link_to_conversations do |t|
      t.references :chat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
