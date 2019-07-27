# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
  validates :name, :email, :phone, presence: true

  belongs_to :vendor
  has_many :orders
end
