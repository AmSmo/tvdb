class AddEpisodeTable < ActiveRecord::Migration[6.0]
  def change
    create_table :episode do |t|
      t.integer :season_id
      t.integer :episode_num
      t.datetime :air_date
      t.string :title
      t.string :plot
      t.float :rating
    end
  end
end
