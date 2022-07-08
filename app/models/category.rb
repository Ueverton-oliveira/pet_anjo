class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String

  has_many :product_categories
  has_many :products

  validates :name, presence: true
end
