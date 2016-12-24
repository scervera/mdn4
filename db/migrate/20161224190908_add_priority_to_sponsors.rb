class AddPriorityToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :priority, :integer
  end
end
