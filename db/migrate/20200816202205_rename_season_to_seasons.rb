class RenameSeasonToSeasons < ActiveRecord::Migration[6.0]
  def change
    rename_table :season, :seasons
  end
end
