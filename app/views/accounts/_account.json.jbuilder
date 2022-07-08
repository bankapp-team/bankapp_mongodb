json.extract! account, :id, :accountnum, :customerid, :accounttype, :balance, :ifsc, :created_at, :updated_at
json.url account_url(account, format: :json)
