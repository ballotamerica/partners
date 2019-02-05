class Invoice < ApplicationRecord
   has_many :services
   belongs_to :client

   accepts_nested_attributes_for :services, allow_destroy: true
end