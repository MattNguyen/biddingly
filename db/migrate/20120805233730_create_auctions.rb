class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.integer :auction_item_id
      t.integer :current_highest_bid
      t.integer :ending_bid

      t.timestamps
    end

    add_index :auctions, :auction_item_id
  end
end
