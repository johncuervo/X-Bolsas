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
  has_and_belongs_to_many :products


  def sumatoria
     suma = 0
     self.products.each do |order|
       suma = suma + order.price
     end
     self.update(subtotal: suma)
     self.update(iva: self.subtotal * 0.19)
     self.update(total: self.subtotal + self.iva)
  end
end
