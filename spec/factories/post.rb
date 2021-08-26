FactoryGirl.define do
  factory :post do
    title 'a' * 20
    content 'a' * 20
    image 'a' * 20
    user
  end
end
