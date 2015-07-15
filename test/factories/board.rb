FactoryGirl.define do
  factory :board do
    sequence(:id) {|i| i}
    moderator_id 2
  end
end