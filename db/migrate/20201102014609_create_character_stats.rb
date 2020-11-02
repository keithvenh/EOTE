class CreateCharacterStats < ActiveRecord::Migration[6.0]
  def change
    create_table :character_stats do |t|
      t.references :character, null: false, foreign_key: true
      t.integer :combat_kills
      t.integer :combat_assists
      t.integer :combat_damage
      t.integer :combat_crits
      t.integer :wounds_taken
      t.integer :wounds_healed
      t.integer :crit_inj_sustained
      t.integer :crit_inj_healed

      t.timestamps
    end
  end
end
