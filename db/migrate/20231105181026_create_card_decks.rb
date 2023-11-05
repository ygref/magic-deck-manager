class CreateCardDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :card_decks do |t|
      t.integer :deck_id
      t.integer :card_id
      t.integer :quantity

      t.timestamps
    end
  end
end
