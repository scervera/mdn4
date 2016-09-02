class ChangeBodyTypeToText < ActiveRecord::Migration
  def change
  	change_column :visitors, :body, :text
  end
end
