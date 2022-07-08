class Account < ApplicationRecord
    self.primary_key = "accountnum"
    belongs_to :customer, class_name: "Customer", foreign_key: "customerid"
    belongs_to :bank, class_name: "Bank", foreign_key: "ifsc"
    has_many :customers, class_name: "Customer", foreign_key: "customerid"
    has_many :banks, class_name: "Bank", foreign_key: "ifsc"
end
