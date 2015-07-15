FactoryGirl.define do
  factory :post do
    author factory: :user
    board
    title "some title"
    body "some body"
  end
end