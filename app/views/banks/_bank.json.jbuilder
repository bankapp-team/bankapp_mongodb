json.extract! bank, :id, :bankname, :branchname, :ifsc, :district, :state, :address, :pincode, :created_at, :updated_at
json.url bank_url(bank, format: :json)
