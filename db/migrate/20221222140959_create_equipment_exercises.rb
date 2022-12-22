class CreateEquipmentExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment_exercises do |t|
      t.integer :equipment_id
      t.integer :exercise_id
      t.timestamps
    end
  end
end
