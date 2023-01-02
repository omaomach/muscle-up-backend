class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :client_id
      t.string :exercise_type
      t.timestamps
    end
  end
end
