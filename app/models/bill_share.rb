class BillShare < ActiveRecord::Base
  attr_accessible :bill_id, :percent, :user_id

  belongs_to :user
  belongs_to :bill
end
