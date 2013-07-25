class ChangeWinnerToCompleted < ActiveRecord::Migration
  def up
    remove_column :entries, :winner
    add_column :entries, :completed, :boolean
  end

  def down
    remove_column :entries, :completed
    add_column :entries, :winner, :boolean
  end
end
