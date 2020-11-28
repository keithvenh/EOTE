class AddDifficultyToRolls < ActiveRecord::Migration[6.0]
  def change
    add_column :rolls, :difficulty, :string
  end
end
