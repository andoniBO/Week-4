class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.integer :project_id                     #OPCION 1
    #  t.references :project, index, true         #OPCION 2
      t.integer :hours
      t.integer :minutes
      t.text :comment
      t.datetime :date

      t.timestamps null: false
    end
  end
end
