class CreateLosses < ActiveRecord::Migration[6.1]
  def change
    create_table :losses do |t|
      t.string :type
      t.string :description
      t.timestamps
    end
  end
end
