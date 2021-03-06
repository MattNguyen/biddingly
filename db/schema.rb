# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120806161645) do

  create_table "auction_items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.decimal  "starting_price", :precision => 8, :scale => 2
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "total_num_days"
  end

  create_table "auctions", :force => true do |t|
    t.integer  "auction_item_id"
    t.integer  "current_highest_bid"
    t.integer  "ending_bid"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "auctions", ["auction_item_id"], :name => "index_auctions_on_auction_item_id"

  create_table "bids", :force => true do |t|
    t.integer  "amount"
    t.integer  "auction_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
