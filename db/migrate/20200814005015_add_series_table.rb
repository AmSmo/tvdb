class AddSeriesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :series_name
    end
  end
end
