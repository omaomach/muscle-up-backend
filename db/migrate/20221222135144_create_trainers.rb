class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phone_number
      t.string :image
      t.timestamps
    end
  end
end
