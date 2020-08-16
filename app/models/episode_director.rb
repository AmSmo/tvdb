class EpisodeDirector < ActiveRecord::Base
    belongs_to :episode
    belongs_to :director
end