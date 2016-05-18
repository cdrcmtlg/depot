class Category < ActiveRecord::Base
  has_many :product
  validates :name, presence: true, uniqueness: true
end
