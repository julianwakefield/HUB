class AddTwitterToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :twitter, :string
  end
end
