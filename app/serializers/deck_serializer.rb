class DeckSerializer < ActiveModel::Serializer
  attributes :id, :subject, :user_id
end
