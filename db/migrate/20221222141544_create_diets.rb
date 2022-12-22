class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.string :name
      t.string :image
      t.integer :gain_id
      t.integer :loss_id
      t.timestamps
    end
  end
end
