class AddNumActiveAuctionDaysToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :total_num_days, :integer
  end
end
