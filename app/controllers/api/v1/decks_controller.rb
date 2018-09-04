module Api
  module V1
    class DecksController < ApplicationController

      def index
        render json: Deck.all
      end

      def show
        id = params['id'].to_i
        deck = Deck.find(id)
        render json: deck
      end

      def create
        id = params['userId']
        deck = Deck.create(subject: params['subject'], user_id: id)
        params['cards'].each do |card|
          new_card = Card.new(front: card['front'], back: card['back'])
          new_card.deck_id = deck.id
          new_card.save
        end
      end

    end
  end
end
