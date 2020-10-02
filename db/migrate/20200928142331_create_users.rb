class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.integer :age
      t.string :favorite_genre
      t.string :profile_pic

      t.timestamps
    end
  end
end
