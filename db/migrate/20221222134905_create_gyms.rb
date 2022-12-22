class CreateGyms < ActiveRecord::Migration[6.1]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :location
      t.string :open_hours
      t.string :description
      t.timestamps
    end
  end
end
