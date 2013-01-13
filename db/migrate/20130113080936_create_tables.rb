class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :table_name
      t.string :desc
      t.integer :table_child_id

      t.timestamps
    end
  end
end
