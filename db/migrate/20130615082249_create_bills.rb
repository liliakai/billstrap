class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :for
      t.date :start
      t.date :end
      t.decimal :amount

      t.timestamps
    end
  end
end
