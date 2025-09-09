FactoryBot.define do
  factory :card do
    user { nil }
    english_firstname { "MyString" }
    english_lastname { "MyString" }
    chinese_name { "MyString" }
    title { "MyString" }
    chinese { "MyString" }
    company_name { "MyString" }
    company_address { "MyString" }
    chinese_company_address { "MyString" }
  end
end
