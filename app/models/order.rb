# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  total       :decimal(, )
#  subtotal    :decimal(, )
#  iva         :decimal(, )
#  vendor_id   :integer
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :vendor
  belongs_to :customer
end
