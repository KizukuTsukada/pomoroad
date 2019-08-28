FactoryBot.define do
  factory :user do
    id                    {"1"}
    name                  {"taro"}
    email                 {"aaa@gmail.com"}
    password              {"000000"}
    password_confirmation {"000000"}
  end
end