class Member < ActiveRecord::Base
  attr_accessible :name

  has_many :bill_shares
end
