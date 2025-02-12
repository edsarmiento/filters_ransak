class CreateCollaborators < ActiveRecord::Migration[7.2]
  def change
    create_table :collaborators do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :uuid

      t.timestamps
    end
    add_index :collaborators, :uuid, unique: true
  end
end
