class AddBrandsToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :brands, :text
  end
end
