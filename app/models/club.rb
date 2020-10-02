class Club < ApplicationRecord
    has_many :user_clubs
    has_many :users, through: :user_clubs
    has_many :club_episodes
    has_many :episodes, through: :club_episodes

    validates :name, uniqueness:  { case_sensitive: false }, presence: true

    def current_episode
        self.club_episodes.find{|club_episode| club_episode.month == Date.today.strftime("%Y-%m")}
        
    end
end
