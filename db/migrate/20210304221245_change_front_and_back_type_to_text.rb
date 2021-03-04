class ChangeFrontAndBackTypeToText < ActiveRecord::Migration[6.1]
  def change
    change_column :flashcards, :front, :text
    change_column :flashcards, :back, :text
  end
end
