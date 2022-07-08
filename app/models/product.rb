class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :description, type: String
  field :price, type: Integer
  belongs_to :productable, polymorphic: true
  has_many :product_categories
  has_many :categories

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
