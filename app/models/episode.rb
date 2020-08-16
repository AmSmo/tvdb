class Episode < ActiveRecord::Base
    belongs_to :season
    has_one :series, through: :season
    has_many :episode_character_actors
    has_many :characters, through: :episode_character_actors
    has_many :actors, through: :episode_character_actors
    
end