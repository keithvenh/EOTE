class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :career
      t.integer :soak
      t.integer :wound_threshold
      t.string :strain_threshold
      t.integer :defense_ranged
      t.integer :defense_melee
      t.integer :brawn
      t.integer :agility
      t.integer :intellect
      t.integer :cunning
      t.integer :presence
      t.integer :willpower
      t.string :category

      t.timestamps
    end
  end
end
