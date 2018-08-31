class CardSerializer < ActiveModel::Serializer
  attributes :id, :deck_id, :front, :back 
end
