class AddUserToDeck < ActiveRecord::Migration[6.1]
  def change
    add_reference :decks, :user, null: false, foriegn_key: true
  end
end
