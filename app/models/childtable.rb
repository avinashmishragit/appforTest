class Childtable < ActiveRecord::Base
  attr_accessible :description_of_Table, :name, :other_detail, :table_id
  belongs_to:table
end
