class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :decks
end
