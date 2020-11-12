class AddRestrictedToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :restricted, :boolean
  end
end
