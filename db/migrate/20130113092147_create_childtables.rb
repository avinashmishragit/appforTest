class CreateChildtables < ActiveRecord::Migration
  def change
    create_table :childtables do |t|
      t.string :name
      t.integer :table_id
      t.string :description_of_Table
      t.string :other_detail

      t.timestamps
    end
  end
end
