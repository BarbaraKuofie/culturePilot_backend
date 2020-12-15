class Category < ApplicationRecord

    has_many :artipieces
    has_many :collections, through: :artipieces

end
