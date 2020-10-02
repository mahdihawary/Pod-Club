class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :name
      t.integer :episode_number
      t.string :episode_title
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
