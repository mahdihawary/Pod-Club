class AddClubEpisodeIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :club_episode_id, :integer
  end
end
