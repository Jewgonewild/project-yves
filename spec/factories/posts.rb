
FactoryGirl.define do
  factory :post do
    title "MyString"
    message "MyText"
    association :user
  end
end
