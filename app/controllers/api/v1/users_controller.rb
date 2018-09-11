module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        render json: users
      end

      def show
        id = params['id'].to_i
        user = User.find(id)
        # puts or bye user.decks
        # byebug
        user.decks.each do |deck|
          deck.cards.sort
        end
        render json: user.decks
      end
    end
  end
end
