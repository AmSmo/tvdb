class RenameEpisodeToEpisodes < ActiveRecord::Migration[6.0]
  def change
    rename_table :episode, :episodes
  end
end
