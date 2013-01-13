class Table < ActiveRecord::Base
  attr_accessible :desc, :table_child_id, :table_name
end
