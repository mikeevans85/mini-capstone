class Product < ApplicationRecord
  validates :name, :price, :size, :description, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :name, uniqueness: true
  validates :description, length: {maximum: 500,
    too_long: "Description must be 500 characters or less."}

  belongs_to :supplier

  has_many :image_bank
  has_many :order
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products

  def is_discounted
    price.to_i < 100
  end

  def tax
    return price.to_i * 0.09
  end

  def total
    return price.to_i + tax
  end

  def image_url_list
    image_bank.map { |image| image.url }
  end

  def category_name
    categories.map { |category| category.name }
  end
end
