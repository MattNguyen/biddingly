class AuctionItemsController < ApplicationController
  def index
    @auction_items = AuctionItem.all
  end

  def new
    @auction_item = AuctionItem.new
  end

  def create
    @auction_item = AuctionItem.new(params[:auction_item])

    if @auction_item.save
      flash[:success] = "Success! You now have an auction!"
      redirect_to auction_item_path(@auction_item)
    else
      flash[:error] = "Oops! Something went horribly wrong."
      render :new
    end
  end

  def show
    @auction_item = AuctionItem.find_by_id(params[:id])
  end
end
