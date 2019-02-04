class Client < ApplicationRecord
    belongs_to :partner
    has_many :invoices, inverse_of: :client
    
    accepts_nested_attributes_for :invoices
end