class AddCategoryToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :category, :string
  end
end
