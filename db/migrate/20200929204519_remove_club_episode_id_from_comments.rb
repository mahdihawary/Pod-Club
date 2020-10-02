class RemoveClubEpisodeIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :club_episode, :integer
  end
end
