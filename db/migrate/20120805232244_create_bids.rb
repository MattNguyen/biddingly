class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :amount
      t.integer :auction_id

      t.timestamps
    end

    add_index :bids, :auction_id
  end
end
