class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.boolean :restricted
      t.string :skill
      t.integer :damage
      t.integer :crit
      t.string :range
      t.integer :encumbrance
      t.integer :hard_points
      t.integer :cost
      t.integer :rarity
      t.text :specials

      t.timestamps
    end
  end
end
