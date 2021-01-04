class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :image, :password, :password_digest

  has_many :tours
  
  def image 
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end 
  end 
end
