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
        
        #params = {"card"=>{"id"=>12, "front"=>"5x5", "back"=>"25", "deck_id"=>4,
        # "created_at"=>"2018-09-04T01:36:20.258Z", "updated_at"=>"2018-09-04T01:36:20.258Z"}
      end
    end
  end
end
