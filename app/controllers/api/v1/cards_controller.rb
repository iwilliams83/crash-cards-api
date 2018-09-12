module Api
  module V1
    class CardsController < ApplicationController
      def index
        render json: Card.all
      end

      def update
        id = params['card']['id']
        front = params['card']['front']
        back = params['card']['back']
        card = Card.find(id)
        card.update(front: front, back: back)
      end

      def destroy
        id = params['cardId']
        card = Card.find(id)
        deck = card.deck
        card.destroy
        if card.deck.cards.length == 0
          deck.destroy
        end
      end


    end
  end
end
