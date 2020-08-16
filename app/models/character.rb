class Character < ActiveRecord::Base
    has_many :episode_character_actors
    has_many :episodes, through: :episode_character_actors
    has_many :actors, -> { distinct }, through: :episode_character_actors
end