class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :image
      t.integer :number
      t.string :condition
      t.timestamps
    end
  end
end
