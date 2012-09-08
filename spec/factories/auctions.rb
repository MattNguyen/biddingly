# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auction do
    auction_id 1
    current_highest_bid 1
    ending_bid 1
  end
end
