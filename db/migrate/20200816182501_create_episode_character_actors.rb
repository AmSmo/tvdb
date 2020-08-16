class CreateEpisodeCharacterActors < ActiveRecord::Migration[6.0]
  def change
    create_table :episode_character_actors do |t|
      t.integer :episode_id
      t.integer :character_id
      t.integer :actor_id
    end
  end
end
