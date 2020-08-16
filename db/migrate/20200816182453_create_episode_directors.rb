class CreateEpisodeDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :episode_directors do |t|
      t.integer :episode_id
      t.integer :director_id
    end
  end
end
