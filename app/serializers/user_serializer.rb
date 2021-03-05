class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :decks, :flashcards
end
