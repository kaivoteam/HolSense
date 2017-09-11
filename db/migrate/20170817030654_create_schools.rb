class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :description
      t.integer :phone
      t.string :direction

      t.timestamps
    end
  end
end
