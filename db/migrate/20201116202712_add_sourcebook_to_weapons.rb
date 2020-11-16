class AddSourcebookToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :sourcebook, :string
    add_column :vehicles, :sourcebook, :string
    add_column :equipment, :sourcebook, :string
    add_column :modifications, :sourcebook, :string
    add_column :armors, :sourcebook, :string
  end
end
