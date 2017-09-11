class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :status
      t.text :comment
      t.references :section, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
