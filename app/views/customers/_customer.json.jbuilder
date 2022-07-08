json.extract! customer, :id, :customerid, :fname, :ifsc, :lname, :mobile, :pancard, :email, :district, :state, :country, :created_at, :updated_at
json.url customer_url(customer, format: :json)
