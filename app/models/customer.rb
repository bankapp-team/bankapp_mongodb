class Customer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :first_name, type: String
  field :last_name, type: String
  field :mobile_number, type: String
  field :email_address, type: String
  field :pan_id, type: String
  field :aadhaar_number, type: String
  field :permanent_address, type: String
  belongs_to :bank_branch
end
