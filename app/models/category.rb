class Category < ApplicationRecord

    has_many :artpieces
    has_many :collections, through: :artpieces

end
