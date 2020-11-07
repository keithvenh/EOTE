class CreateCharacterModifications < ActiveRecord::Migration[6.0]
  def change
    create_table :character_modifications do |t|
      t.references :character, null: false, foreign_key: true
      t.references :modification, null: false, foreign_key: true
      t.integer :quantity
      t.string :brand

      t.timestamps
    end
  end
end
