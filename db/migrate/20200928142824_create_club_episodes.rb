class CreateClubEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :club_episodes do |t|
      t.integer :club_id
      t.integer :episode_id
      t.date :month

      t.timestamps
    end
  end
end
