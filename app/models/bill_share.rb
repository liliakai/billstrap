class BillShare < ActiveRecord::Base
  attr_accessible :bill_id, :percent, :user_id
end
