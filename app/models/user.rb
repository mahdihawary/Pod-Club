class User < ApplicationRecord
    has_many :user_clubs
    has_many :clubs, through: :user_clubs
    has_many :comments
    has_many :episodes, through: :comments


    has_secure_password

    validates :username, uniqueness: true, presence: true
    validates :age, numericality: {greater_than: 15}

    # def find_uc
    #     UserClub.find_by user_id: self.id
    # end
end
