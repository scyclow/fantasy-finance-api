class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :sector_id
      t.string :ticker_symbol
      t.string :name

      t.timestamps
    end
  end
end
