class AddAuctionStartDateToAuctionItem < ActiveRecord::Migration
  def change
    add_column :auction_items, :started_at, :datetime
  end
end
