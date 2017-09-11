class CreateJoinTableLevelSubject < ActiveRecord::Migration[5.1]
  def change
    create_join_table :levels, :subjects do |t|
      t.index [:level_id, :subject_id]
      # t.index [:subject_id, :level_id]
    end
  end
end
