class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :image
      t.string :level
      t.string :password_digest
      t.integer :age
      t.string :bio
      t.integer :height
      t.string :phone_number
      t.integer :trainer_id
      t.string :diet_type
      t.string :payment_info
      t.integer :weight
      t.integer :target_weight
      t.timestamps
    end
  end
end
