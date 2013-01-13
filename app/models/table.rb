class Table < ActiveRecord::Base
  attr_accessible :desc, :table_child_id, :table_name
  has_many :childtables ,:dependent => :destroy
end
