class AddPriorityToAffiliates < ActiveRecord::Migration
  def change
    add_column :affiliates, :priority, :integer
  end
end
