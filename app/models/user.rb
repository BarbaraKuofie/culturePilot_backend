class User < ApplicationRecord

    has_secure_password 
    has_many :tours
    has_many :artpieces, through: :tours
    has_one_attached :image
    # validates :username, presence: true, uniqueness:true 
    # validates :email, uniqueness: true 

end
