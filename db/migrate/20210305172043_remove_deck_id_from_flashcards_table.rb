class RemoveDeckIdFromFlashcardsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :flashcards, :deck_id, :integer
  end
end
