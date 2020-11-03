class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :manufacturer
      t.string :model
      t.string :hull_type
      t.integer :primary_hyperdrive
      t.integer :secondary_hyperdrive
      t.boolean :navicomputer
      t.string :sensor_range
      t.integer :passenger_capacity
      t.string :complement
      t.integer :cost
      t.integer :rarity
      t.integer :hard_points
      t.integer :capacity
      t.integer :silhouette
      t.integer :speed
      t.integer :handling
      t.integer :armor
      t.integer :hull_trauma_threshold
      t.string :system_strain_threshold
      t.integer :defense_fore
      t.integer :defense_aft
      t.integer :defense_port
      t.integer :defense_starboard

      t.timestamps
    end
  end
end
