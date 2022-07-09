class Coupon
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :code, type: String
  field :status, type: Integer
  field :discount_value, type: Integer
  field :max_use, type: Integer
  field :due_date, type: Time

  validates :name, presence: true
  validates :code, presence: true
  validates :status, presence: true
  validates :discount_value, presence: true
  validates :max_use, presence: true
  validates :due_date, presence: true, future_date: true

  enum status: { active:1,  inactive: 2 }

end
