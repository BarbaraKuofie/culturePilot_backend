class ArtpieceSerializer < ActiveModel::Serializer
  attributes :id, :title, :image1,  :audio, :details, :location, :artist, :fun_facts, :year_created, :tour_id
end
