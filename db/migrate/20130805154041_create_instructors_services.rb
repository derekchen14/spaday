class CreateInstructorsServices < ActiveRecord::Migration
  def change
    create_table :instructors_services do |t|

      t.belongs_to :instructor_id
      t.belongs_to :service_id
    end
  end
end
