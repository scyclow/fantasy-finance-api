class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.integer :portfolio_id
      t.integer :amount
      t.integer :stock_id

      t.timestamps
    end
  end
end
