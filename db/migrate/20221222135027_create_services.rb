class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :description
      t.string :image
      t.string :name
      t.integer :trainer_id
      t.timestamps
    end
  end
end
