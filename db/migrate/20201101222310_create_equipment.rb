class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.boolean :restricted
      t.integer :encumbrance
      t.integer :cost
      t.integer :rarity
      t.text :description

      t.timestamps
    end
  end
end
