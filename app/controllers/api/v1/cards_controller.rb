module Api
  module V1
    class CardsController < ApplicationController
      def index
        render json: Card.all
      end
    end
  end
end
