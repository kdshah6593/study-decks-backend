class User < ApplicationRecord
    has_secure_password
    
    has_many :decks, dependent: :destroy
    has_many :flashcards, through: :decks

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
end
