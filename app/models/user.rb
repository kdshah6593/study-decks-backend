class User < ApplicationRecord
    has_many :decks, dependent: :destroy
    has_many :flashcards, through: :decks
end
