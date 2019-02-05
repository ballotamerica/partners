class Client < ApplicationRecord
    belongs_to :partner
    has_many :invoices
    
    accepts_nested_attributes_for :invoices, allow_destroy: true
end