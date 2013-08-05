class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|

      t.string :name
      t.string :description
      t.integer :instructor_id

      t.timestamps
    end
  end
end
