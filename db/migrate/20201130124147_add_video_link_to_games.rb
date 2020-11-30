class AddVideoLinkToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :video_link, :string
  end
end
