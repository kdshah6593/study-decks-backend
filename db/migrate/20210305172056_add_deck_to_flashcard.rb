class AddDeckToFlashcard < ActiveRecord::Migration[6.1]
  def change
    add_reference :flashcards, :deck, null: false, foriegn_key: true
  end
end
