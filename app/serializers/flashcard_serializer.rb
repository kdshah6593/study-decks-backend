class FlashcardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :front, :back, :deck_id, :deck
end
