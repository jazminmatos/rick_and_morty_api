class CreateFavoriteEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_episodes do |t|
      t.integer :id
      t.string :name
      t.string :air_date
      t.string :episode
      t.string :characters
      t.string :url

      t.timestamps
    end
  end
end
