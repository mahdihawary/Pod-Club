class AddEpisodeIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :episode_id, :integer
  end
end
