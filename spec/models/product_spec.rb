require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should have_many(:users) }
  it { should have_and_belong_to_many(:orders) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:stock) }
  it { should validate_presence_of(:category) }
end
