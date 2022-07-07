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

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :mobile_number, presence: true, uniqueness: true,length: { minimum: 10 }
  validates :pan_id, presence: true, uniqueness: true, length: { minimum: 10 }
  validates :aadhaar_number, uniqueness: true, presence: true
  validates :permanent_address, presence: true


  has_many :accounts, dependent: :destroy
  has_many :bank_branches
end
