class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :image
      t.string :level
      t.string :password_digest
      t.integer :age
      t.string :phone_number
      t.integer :trainer_id
      t.integer :diet_id
      t.string :payment_info
      t.integer :admin_id
      t.integer :weight
      t.integer :target_weight
      t.integer :supplements_id
      t.integer :exercise_id
      t.timestamps
    end
  end
end
