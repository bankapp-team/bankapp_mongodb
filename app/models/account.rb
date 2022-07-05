class Account
  include Mongoid::Document
  include Mongoid::Timestamps
  field :account_no, type: String
  field :balance, type: Integer
  field :account_type, type: String
  belongs_to :customer
  has_many :customers
  has_many :bank_branches
end
