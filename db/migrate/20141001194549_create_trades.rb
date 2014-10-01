class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :portfolio_id
      t.integer :amount
      t.integer :stock_id
      t.boolean :buy

      t.timestamps
    end
  end
end
