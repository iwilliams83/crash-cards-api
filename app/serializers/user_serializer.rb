class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :decks
end

def decks
  new_decks = object.decks.map do |deck|
    cards = deck.cards.sort
    deck.cards = cards
    deck
  end
  new_decks
end
