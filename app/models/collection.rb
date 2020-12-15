class Collection < ApplicationRecord

    belongs_to :user 
    has_many :artpieces 
    has_many :categories, through: :artpieces
    
end
