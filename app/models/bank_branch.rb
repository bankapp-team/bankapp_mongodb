class BankBranch
  include Mongoid::Document
  include Mongoid::Timestamps
  field :ifsc, type: String
  field :bankname, type: String
  field :branch, type: String
  field :address, type: String

  has_many :customers, dependent: :destroy
end
