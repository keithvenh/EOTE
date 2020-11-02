class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.boolean :restricted
      t.integer :defense
      t.integer :soak
      t.integer :cost
      t.integer :encumbrance
      t.integer :rarity
      t.text :description

      t.timestamps
    end
  end
end
