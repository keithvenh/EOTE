class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.references :character, null: false, foreign_key: true
      t.string :name
      t.string :attribute
      t.string :category
      t.boolean :career
      t.integer :level

      t.timestamps
    end
  end
end
