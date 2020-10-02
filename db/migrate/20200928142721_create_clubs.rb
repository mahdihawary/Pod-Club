class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :genre
      t.string :club_image

      t.timestamps
    end
  end
end
