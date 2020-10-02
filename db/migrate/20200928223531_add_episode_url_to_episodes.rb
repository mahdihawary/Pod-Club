class AddEpisodeUrlToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :episode_url, :string
  end
end
