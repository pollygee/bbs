FactoryGirl.define do
  factory :comment do
    author factory: :user
    post
    body "comment something about something else"
  end
end