class Payment < ApplicationRecord
  has_one :service_invoice
end
