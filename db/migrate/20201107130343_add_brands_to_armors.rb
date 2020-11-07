class AddBrandsToArmors < ActiveRecord::Migration[6.0]
  def change
    add_column :armors, :brands, :text
  end
end
