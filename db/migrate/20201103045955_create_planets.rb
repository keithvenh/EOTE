class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :system
      t.string :sector
      t.string :region
      t.integer :year
      t.integer :day
      t.bigint :population

      t.timestamps
    end
  end
end
