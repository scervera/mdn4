class CreateMannerisms < ActiveRecord::Migration
  def change
    create_table :mannerisms do |t|
      t.string :quote
      t.string :author
      t.integer :priority

      t.timestamps null: false
    end
  end
end
