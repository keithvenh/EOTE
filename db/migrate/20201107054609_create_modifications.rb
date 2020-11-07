class CreateModifications < ActiveRecord::Migration[6.0]
  def change
    create_table :modifications do |t|
      t.string :name
      t.boolean :restricted
      t.integer :cost
      t.integer :encumbrance
      t.integer :hp_required
      t.integer :rarity
      t.text :brands
      t.text :base_modifiers
      t.text :mod_options

      t.timestamps
    end
  end
end
