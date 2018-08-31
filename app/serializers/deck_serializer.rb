class DeckSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :subject, :cards
end
