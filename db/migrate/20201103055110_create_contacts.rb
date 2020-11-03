class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :character, null: false, foreign_key: true
      t.string :last_known_location
      t.references :planet, null: false, foreign_key: true
      t.text :details
      t.integer :warmth

      t.timestamps
    end
  end
end
