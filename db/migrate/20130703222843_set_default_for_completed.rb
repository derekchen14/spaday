class SetDefaultForCompleted < ActiveRecord::Migration
  def up
    change_column :entries, :completed, :boolean, default: false
  end

  def down
    change_column :entries, :completed, :boolean
  end
end
