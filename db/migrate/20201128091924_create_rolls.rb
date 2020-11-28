class CreateRolls < ActiveRecord::Migration[6.0]
  def change
    create_table :rolls do |t|
      t.references :user, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.string :skill
      t.string :dice
      t.string :dice_results
      t.string :roll_result

      t.timestamps
    end
  end
end
