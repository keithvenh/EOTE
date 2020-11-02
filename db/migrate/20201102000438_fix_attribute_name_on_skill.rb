class FixAttributeNameOnSkill < ActiveRecord::Migration[6.0]
  def change
    rename_column :skills, :attribute, :attr
  end
end
