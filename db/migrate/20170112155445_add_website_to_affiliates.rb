class AddWebsiteToAffiliates < ActiveRecord::Migration
  def change
    add_column :affiliates, :website, :string
  end
end
