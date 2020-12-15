class User < ApplicationRecord

    has_secure_password 
    has_many :collections
    has_many :artpieces, :through :collections

    validates :username, presence: true, uniqueness:true 
    validates :email, uniqueness: true 

end
