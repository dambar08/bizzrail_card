require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    assign(:card, Card.create!(
      user: nil,
      english_firstname: "English Firstname",
      english_lastname: "English Lastname",
      chinese_name: "Chinese Name",
      title: "Title",
      chinese: "Chinese",
      company_name: "Company Name",
      company_address: "Company Address",
      chinese_company_address: "Chinese Company Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/English Firstname/)
    expect(rendered).to match(/English Lastname/)
    expect(rendered).to match(/Chinese Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Chinese/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Company Address/)
    expect(rendered).to match(/Chinese Company Address/)
  end
end
