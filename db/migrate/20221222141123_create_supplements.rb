class CreateSupplements < ActiveRecord::Migration[6.1]
  def change
    create_table :supplements do |t|
      t.string :name
      t.integer :client_id
      t.string :supplement_type
      t.string :image
      t.integer :amount
      t.timestamps
    end
  end
end
