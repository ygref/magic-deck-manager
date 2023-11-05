class CreateDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :decks do |t|
      t.integer :user_id
      t.string :name
      t.string :format
      t.integer :card_count

      t.timestamps
    end
  end
end
