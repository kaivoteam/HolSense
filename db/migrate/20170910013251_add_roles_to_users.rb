class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :holsense_role, :boolean
    add_column :users, :utp_role, :boolean
    add_column :users, :subject_role, :boolean
  end
end
