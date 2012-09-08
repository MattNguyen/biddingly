class AddStartingBidToAuctionItem < ActiveRecord::Migration
  def change
    add_column :auction_items, :starting_bid, :integer
  end
end
