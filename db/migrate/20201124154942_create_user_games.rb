class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.game :references
      t.user :references

      t.timestamps
    end
  end
end
