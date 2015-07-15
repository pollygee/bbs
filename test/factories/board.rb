FactoryGirl.define do
  factory :board do
    name "something"
    moderator factory: :user
  end
end