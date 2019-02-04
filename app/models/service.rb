class Service < ApplicationRecord
    belongs_to :invoice, inverse_of: :services
end