class AddFrequencyToEvents < ActiveRecord::Migration
  def change
    add_column :events, :repeatable, :boolean
    add_column :events, :frequency, :string
    add_column :events, :day, :string
  end
end
