class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.text :description
      t.references :school, index: true, foreign_key: true

      t.timestamps
    end
  end
end
