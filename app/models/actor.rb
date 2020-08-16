class Actor < ActiveRecord::Base
    has_many :episode_character_actors
    has_many :episodes, through: :episode_character_actors
    has_many :characters, -> { distinct }, through: :episode_character_actors
end