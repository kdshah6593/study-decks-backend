class DeckSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id, :user, :flashcards
end
