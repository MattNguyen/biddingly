class AuctionItem < ActiveRecord::Base
  attr_accessible :name, :description, :started_at, :ended_at, :starting_price, :total_num_days
  before_create :to_date, :set_defaults
  validates_presence_of :name, :total_num_days
  validates :total_num_days, :length => { :maximum => 7 }

  private

  def to_date
    # Conversion for number of days. e.g. 1 day = Time.now + self.days
    self.ended_at = self.started_at + self.total_num_days.days
  end

  def set_defaults
    self.starting_price ||= 0
    self.started_at ||= Time.now
  end
end
