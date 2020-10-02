class RemoveEpisodeIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :episode_id, :integer
  end
end
