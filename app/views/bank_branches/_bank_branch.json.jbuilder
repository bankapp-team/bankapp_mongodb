json.extract! bank_branch, :id, :ifsc, :bankname, :branch, :address, :created_at, :updated_at
json.url bank_branch_url(bank_branch, format: :json)
