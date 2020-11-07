class AddBrandToCharacterArmors < ActiveRecord::Migration[6.0]
  def change
    add_column :character_armors, :brand, :string
  end
end
