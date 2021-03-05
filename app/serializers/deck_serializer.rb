class DeckSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id, :created_at, :updated_at, :user, :flashcards
end
