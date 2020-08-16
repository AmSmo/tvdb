require 'pry'
require 'json'
simpsons_full = File.read('./db/rickandmorty.json')
simpsons = JSON.parse(simpsons_full)
current_series =  Series.find_or_create_by(series_name: "Rick and Morty")
simpsons.each do |season,episodes|
    
    current_season = Season.find_or_create_by(series_id: current_series.id, season_number: season.split("_")[1].to_i )
    episodes.each do |episode, episode_info|
        current_episode = Episode.find_or_create_by(season_id: current_season.id, episode_num: episode.split("_")[1].to_i, title: episode_info["title"], plot: episode_info["plot"], air_date: episode_info["air_date"], rating: episode_info["rating"])
        
        episode_info["writers"].each do |writer|
            current_writer = Writer.find_or_create_by(name: writer)
            EpisodeWriter.find_or_create_by(episode_id:current_episode.id, writer_id: current_writer.id)
        end

        episode_info["directors"].each do |director|
            current_director = Director.find_or_create_by(name: director)
            EpisodeDirector.find_or_create_by(episode_id:current_episode.id, director_id: current_director.id)
        end
        
        episode_info["cast"].each do |actor, character|
            current_actor = Actor.find_or_create_by(name: actor)
            character.each do |char|
                current_char = Character.find_or_create_by(name: char)
                EpisodeCharacterActor.find_or_create_by(episode_id: current_episode.id, actor_id: current_actor.id, character_id: current_char.id)
            end
        end
    end
    

end

