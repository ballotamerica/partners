class Service < ApplicationRecord
    validates :name, presence: true
    validates :baserate, presence: true
    
    belongs_to :invoice, inverse_of: :services
end