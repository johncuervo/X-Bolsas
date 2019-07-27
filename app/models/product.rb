# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  width      :integer
#  height     :integer
#  unit       :decimal(, )
#  quantity   :integer
#  price      :decimal(, )
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
  validates :width, :height, :unit, :quantity, presence: true
  
  has_and_belongs_to_many :orders
end
