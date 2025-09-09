FactoryBot.define do
  factory :gdpr_delete_request do
    sequence(:email) { |n| "person#{n}@example.com" }
  end
end
