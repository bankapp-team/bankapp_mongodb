class Bank < ApplicationRecord
    self.primary_key = "ifsc"
    has_many :customers, dependent: :destroy, class_name: "Customer", foreign_key: "ifsc"
    has_many :accounts,dependent: :destroy, class_name: "Account", foreign_key: "ifsc"
end
