class CreateMachineExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :machine_exercises do |t|
      t.integer :machine_id
      t.integer :exercise_id
      t.timestamps
    end
  end
end
