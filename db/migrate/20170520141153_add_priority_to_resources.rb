class AddPriorityToResources < ActiveRecord::Migration
  def change
    add_column :resources, :priority, :integer
  end
end
