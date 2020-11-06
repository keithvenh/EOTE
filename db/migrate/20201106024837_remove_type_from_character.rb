class RemoveTypeFromCharacter < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :type
  end
end
