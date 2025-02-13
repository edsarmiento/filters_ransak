class CreateCollaborators < ActiveRecord::Migration[7.2]
  def change
    create_table :collaborators do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :uuid
      t.datetime :time_on_teams
      t.boolean :certified
      t.string :seniorityColla
      t.string :tech_stack
      t.string :total_montly_salary
      t.string :account
      t.datetime :started_arkus_nexus

      t.timestamps
    end
  end
end
