class CreateNotations < ActiveRecord::Migration[6.0]
  def change
    create_table :notations do |t|
      t.references :contact, null: false, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
