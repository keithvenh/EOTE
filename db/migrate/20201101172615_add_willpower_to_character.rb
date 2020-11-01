class AddWillpowerToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :willpower, :integer
  end
end
