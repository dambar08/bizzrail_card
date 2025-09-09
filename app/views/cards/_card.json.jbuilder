json.extract! card, :id, :user_id, :english_firstname, :english_lastname, :chinese_name, :title, :chinese, :company_name, :company_address, :chinese_company_address, :created_at, :updated_at
json.url card_url(card, format: :json)
