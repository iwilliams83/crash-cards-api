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
    end
  end
end
