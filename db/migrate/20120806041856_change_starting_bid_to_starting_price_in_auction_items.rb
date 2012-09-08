class ChangeStartingBidToStartingPriceInAuctionItems < ActiveRecord::Migration
  def up
    change_column :auction_items, :starting_bid, :starting_price
  end

  def down
    change_column :auction_items, :starting_price, :starting_bid
  end
end
