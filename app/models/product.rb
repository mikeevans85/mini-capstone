class Product < ApplicationRecord
  validates :name, :price, :size, :description, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :name, uniqueness: true
  validates :description, length: {maximum: 500,
    too_long: "Description must be 500 characters or less."}


  def is_discounted
    price < 100
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
end
