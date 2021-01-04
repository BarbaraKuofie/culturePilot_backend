class Category < ApplicationRecord

    has_many :artpieces
    has_many :tours, through: :artpieces

end
