class AddHpToArmors < ActiveRecord::Migration[6.0]
  def change
    add_column :armors, :hard_points, :integer
  end
end
