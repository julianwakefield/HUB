class ChangeGameIdInPosts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :posts, :game_id, true
  end
end
