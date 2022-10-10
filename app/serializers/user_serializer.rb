class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :phone_number, :location, :profile_pic
end
