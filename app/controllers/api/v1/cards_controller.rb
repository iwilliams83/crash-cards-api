module Api
  module V1
    class CardsController < ApplicationController
      def index
        render json: Card.all
      end

      def update
        
      end
    end
  end
end
