class FlashcardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :front, :back, :created_at, :updated_at, :deck_id, :deck
end
