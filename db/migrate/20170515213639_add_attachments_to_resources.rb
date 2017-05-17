class AddAttachmentsToResources < ActiveRecord::Migration
  def change
    add_column :resources, :attachments, :string
  end
end
