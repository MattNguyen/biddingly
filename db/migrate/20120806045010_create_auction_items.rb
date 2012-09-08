class CreateAuctionItems < ActiveRecord::Migration
  def change
    create_table :auction_items do |f|
       f.string    :name
       f.text      :description
       f.datetime  :started_at
       f.datetime  :ended_at
       f.decimal   :starting_price,  :precision => 8,  :scale => 2

       f.timestamps
    end
  end
end
