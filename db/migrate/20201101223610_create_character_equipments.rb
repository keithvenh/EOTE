class CreateCharacterEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :character_equipments do |t|
      t.references :character, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
