class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :activities, :name, :title
  end
end