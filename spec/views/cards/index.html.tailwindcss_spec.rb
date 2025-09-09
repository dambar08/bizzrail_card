require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        user: nil,
        english_firstname: "English Firstname",
        english_lastname: "English Lastname",
        chinese_name: "Chinese Name",
        title: "Title",
        chinese: "Chinese",
        company_name: "Company Name",
        company_address: "Company Address",
        chinese_company_address: "Chinese Company Address"
      ),
      Card.create!(
        user: nil,
        english_firstname: "English Firstname",
        english_lastname: "English Lastname",
        chinese_name: "Chinese Name",
        title: "Title",
        chinese: "Chinese",
        company_name: "Company Name",
        company_address: "Company Address",
        chinese_company_address: "Chinese Company Address"
      )
    ])
  end

  it "renders a list of cards" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("English Firstname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("English Lastname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Chinese Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Chinese".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Company Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Company Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Chinese Company Address".to_s), count: 2
  end
end
