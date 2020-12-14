class ArtpieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :image1, :image2, :image3, :audio, :details, :location, :artist, :fun_facts, :year_created, :category_id, :collection_id
end
