class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id

  has_many :artpieces 
end
