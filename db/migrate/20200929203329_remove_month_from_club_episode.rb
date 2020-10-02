class RemoveMonthFromClubEpisode < ActiveRecord::Migration[6.0]
  def change
    remove_column :club_episodes, :month, :time
  end
end
