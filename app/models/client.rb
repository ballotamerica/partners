class Client < ApplicationRecord
    belongs_to :partner
    has_many :invoices
    
    accepts_nested_attributes_for :invoices
    
    scope :all_clients, ->{ where(status: "current").or where(status: "archive").or where(status: nil) }
    scope :active, ->{ where(status: "current") }
    scope :archive, ->{ where(status: "archive") }
end