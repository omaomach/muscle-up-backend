class CreateSupplements < ActiveRecord::Migration[6.1]
  def change
    create_table :supplements do |t|
      t.string :name
      t.string :supplement_type
      t.integer :amount
      t.timestamps
    end
  end
end
