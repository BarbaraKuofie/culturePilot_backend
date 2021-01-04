class Tour < ApplicationRecord

    belongs_to :user 
    has_many :artpieces 
    has_many :categories, through: :artpieces
    validates :title, presence: true, uniqueness:true 
    validates :description, presence: true

    
end
