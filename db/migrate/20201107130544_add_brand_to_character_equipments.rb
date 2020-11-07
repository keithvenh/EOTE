class AddBrandToCharacterEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :character_equipments, :brand, :string
  end
end
