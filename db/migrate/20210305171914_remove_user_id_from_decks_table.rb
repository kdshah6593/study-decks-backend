class RemoveUserIdFromDecksTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :decks, :user_id, :integer
  end
end
