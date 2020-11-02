class CreateCharacterArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :character_armors do |t|
      t.references :character, null: false, foreign_key: true
      t.references :armor, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
