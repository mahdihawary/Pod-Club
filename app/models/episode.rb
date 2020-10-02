class Episode < ApplicationRecord
    has_many :club_episodes
    has_many :clubs, through: :club_episodes
    has_many :comments



    # validates :episode_title, uniqueness: {scope: :name}
    # validates :episode_number, uniqueness: {scope: :name}

    def full_name
        "#{self.name }: #{self.episode_title}"
    end

end
