# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  width      :decimal(, )
#  height     :decimal(, )
#  unit       :decimal(, )
#  quantity   :decimal(, )
#  price      :decimal(, )
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
end