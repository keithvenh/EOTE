class AddBrandsToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :brands, :text
  end
end
