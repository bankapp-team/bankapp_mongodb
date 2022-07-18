class Customer < ApplicationRecord
    self.primary_key = "customerid"
    has_many :accounts, dependent: :destroy, class_name: "Account", foreign_key: "customerid"
    has_many :banks, class_name: "Bank", foreign_key: "customerid"
    # belongs_to :bank, class_name: "Bank", foreign_key: "customerid" 
end
