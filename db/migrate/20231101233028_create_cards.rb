class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :cmc
      t.string :card_type
      t.integer :power
      t.integer :toughness

      t.timestamps
    end
  end
end
