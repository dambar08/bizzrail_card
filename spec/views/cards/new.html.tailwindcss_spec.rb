require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      user: nil,
      english_firstname: "MyString",
      english_lastname: "MyString",
      chinese_name: "MyString",
      title: "MyString",
      chinese: "MyString",
      company_name: "MyString",
      company_address: "MyString",
      chinese_company_address: "MyString"
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do
      assert_select "input[name=?]", "card[user_id]"

      assert_select "input[name=?]", "card[english_firstname]"

      assert_select "input[name=?]", "card[english_lastname]"

      assert_select "input[name=?]", "card[chinese_name]"

      assert_select "input[name=?]", "card[title]"

      assert_select "input[name=?]", "card[chinese]"

      assert_select "input[name=?]", "card[company_name]"

      assert_select "input[name=?]", "card[company_address]"

      assert_select "input[name=?]", "card[chinese_company_address]"
    end
  end
end
