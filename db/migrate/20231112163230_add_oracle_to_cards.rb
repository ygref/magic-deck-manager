class AddOracleToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :oracle_text, :text
  end
end
