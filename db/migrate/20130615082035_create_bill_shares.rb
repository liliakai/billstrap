class CreateBillShares < ActiveRecord::Migration
  def change
    create_table :bill_shares do |t|
      t.integer :user_id
      t.decimal :percent
      t.integer :bill_id

      t.timestamps
    end
  end
end
