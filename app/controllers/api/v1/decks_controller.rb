class Api::V1::DecksController < ApplicationController
    
    def index
        decks = Deck.all
        render json: DeckSerializer.new(decks)
    end

    def show
        deck = Deck.find_by(id: params[:id])
        render json: DeckSerializer.new(deck)
    end

    def create
        deck = Deck.new(deck_params)
        if deck.save
            render json: DeckSerializer.new(deck), status: :accepted
        else
            render json: {errors: deck.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        deck = Deck.find_by(id: params[:id])
        deck = deck.update(deck_params)
        render json: DeckSerializer.new(deck), status: :accepted
    end

    def destroy
        deck = Deck.find_by(id: params[:id])
        deck.destroy
        decks = Deck.all
        render json: DeckSerializer.new(decks)
    end

    private
    def deck_params
        params.require(:deck).permit(:title, :user_id) # these attributes should be in body of fetch request
    end

end
