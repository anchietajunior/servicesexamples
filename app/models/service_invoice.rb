class ServiceInvoice < ApplicationRecord
  belongs_to :payment
  validates :payment, presence: true
end
