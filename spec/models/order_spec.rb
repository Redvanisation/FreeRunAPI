require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:product_id) }
  it { should validate_presence_of(:total) }
  it { should validate_presence_of(:paid) }
  it { should validate_presence_of(:delivered) }
end
