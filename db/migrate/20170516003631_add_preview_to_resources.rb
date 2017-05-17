class AddPreviewToResources < ActiveRecord::Migration
  def change
    add_column :resources, :preview, :string
  end
end
