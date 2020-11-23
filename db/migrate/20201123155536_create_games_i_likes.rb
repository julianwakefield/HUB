class CreateGamesILikes < ActiveRecord::Migration[6.0]
  def change
    create_table :games_i_likes do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
