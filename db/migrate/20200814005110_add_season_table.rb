class AddSeasonTable < ActiveRecord::Migration[6.0]
  def change
    create_table :season do |t|
      t.integer :season_number
      t.integer :series_id
    end
  end
end
