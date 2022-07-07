class BankBranch
  include Mongoid::Document
  include Mongoid::Timestamps
  field :ifsc, type: String
  field :bankname, type: String
  field :branch, type: String
  field :address, type: String

  validates :ifsc, presence: true, uniqueness: true, length: { minimum: 11 }
  validates :bankname, presence: true, length: { minimum: 3 }
  validates :branch, presence: true
  validates :address, presence: true
  has_many :customers, dependent: :destroy
end
