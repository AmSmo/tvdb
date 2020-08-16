class Director < ActiveRecord::Base
    has_many :episode_directors
    has_many :episodes, through: :episode_directors
end