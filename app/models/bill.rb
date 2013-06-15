class Bill < ActiveRecord::Base
  attr_accessible :amount, :end, :for, :start

  has_many :bill_shares
end
