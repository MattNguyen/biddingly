# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auction_item do
    name "MyString"
    description "MyText"
    ended_at "2012-08-05 16:23:33"
  end
end
