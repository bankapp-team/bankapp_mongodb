json.extract! customer, :id, :first_name, :last_name, :mobile_number, :email_address, :pan_id, :aadhaar_number, :permanent_address, :bank_branch_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
