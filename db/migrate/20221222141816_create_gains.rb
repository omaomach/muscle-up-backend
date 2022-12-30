class CreateGains < ActiveRecord::Migration[6.1]
  def change
    create_table :gains do |t|
      t.string :gain_type
      t.string :description
      t.timestamps
    end
  end
end
