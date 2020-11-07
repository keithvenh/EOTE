class AddAttachmentTypeToModification < ActiveRecord::Migration[6.0]
  def change
    add_column :modifications, :attachment_type, :string
  end
end
