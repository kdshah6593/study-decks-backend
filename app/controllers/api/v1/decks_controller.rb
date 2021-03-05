class Api::V1::DecksController < ApplicationController
    
    def index
        decks = Deck.all
        render json: decks
    end

    def show
        deck = Deck.find_by(id: params[:id])
        render json: deck
    end

    def create
        deck = Deck.new(deck_params)
        if deck.save
            render json: deck, status: :accepted
        else
            render json: {errors: deck.errors.full_messages}, status: :unprocessable_entity
            # add validation in Deck Model for title presence
        end
    end

    def update

    end

    def destroy

    end

    private
    def deck_params
        params.require(:deck).permit(:title, :user_id)
    end

end