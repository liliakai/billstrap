class Bill < ActiveRecord::Base
  attr_accessible :amount, :end, :for, :start
end
