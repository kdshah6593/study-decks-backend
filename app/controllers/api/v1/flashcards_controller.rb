class Api::V1::FlashcardsController < ApplicationController
        
    def index
        flashcards = Flashcard.all
        render json: FlashcardSerializer.new(flashcards)
    end

    def show
        flashcard = Flashcard.find_by(id: params[:id])
        render json: FlashcardSerializer.new(flashcard)
    end

    def create
        flashcard = Flashcard.new(flashcard_params)
        if flashcard.save
            render json: FlashcardSerializer.new(flashcard), status: :accepted
        else
            render json: {errors: flashcard.errors.full_messages}, status: :unprocessable_entity
            # add validation in flashcard Model for front & back presence
        end
    end

    def update
        flashcard = Flashcard.find_by(id: params[:id])
        flashcard = flashcard.update(flashcard_params)
        render json: FlashcardSerializer.new(flashcard), status: :accepted
    end

    def destroy
        flashcard = Flashcard.find_by(id: params[:id])
        flashcard.destroy
        # what do I need to render here?
    end

    private
    def flashcard_params
        params.require(:flashcard).permit(:front, :back, :deck_id) # these attributes should be in body of fetch request
    end
end
