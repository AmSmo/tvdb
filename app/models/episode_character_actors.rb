class EpisodeCharacterActor < ActiveRecord::Base
    belongs_to :episode
    belongs_to :character
    belongs_to :actor
end