class UserClub < ApplicationRecord
    belongs_to :user
    belongs_to :club
    validates :club_id, uniqueness: {scope: :user_id}
    
end
