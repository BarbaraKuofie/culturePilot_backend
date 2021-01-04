class TourSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :subtitle, :cover_image, :user_id, :terms

  has_many :artpieces 
end
