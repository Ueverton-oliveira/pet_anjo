require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it_behaves_like "name searchable concern", :category


  # it { is_expected.to have_many(:product_categories) }
  # it { is_expected.to have_many(:products) }
end
