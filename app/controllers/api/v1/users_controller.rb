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
        #decks = Deck.find_by(user_id: id)
        render json: user.decks
      end
    end
  end
end
