class CreateInstructorsServices < ActiveRecord::Migration
  def change
    create_table :instructors_services do |t|

      t.integer :instructor_id
      t.integer :service_id
    end
  end
end
