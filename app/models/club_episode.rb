class ClubEpisode < ApplicationRecord
    belongs_to :club
    belongs_to :episode

    validates :club_id, uniqueness: {scope: :episode_id}


    

end
