class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password, :password_digest

  has_many :collections
end
