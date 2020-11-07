class AddBrandToCharacterWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :character_weapons, :brand, :string
  end
end
