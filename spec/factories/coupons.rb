FactoryBot.define do
  factory :coupon do
    name { "MyString" }
    code { "MyString" }
    status { 1 }
    discount_value { "9.99" }
    max_use { 1 }
    due_date { "2022-07-08 18:25:12" }
  end
end
