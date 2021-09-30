class CreateFavoriteEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_episodes, id: false do |t|
      t.primary_key :id
      t.string :name
      t.string :air_date
      t.string :episode
      t.string :characters, array: true, default: []
      t.string :url

      t.timestamps
    end
  end
end
