class FixTimesColumnName < ActiveRecord::Migration
  def change
    rename_column :activities, :times, :time
  end
end
