require 'rails_helper'

RSpec.describe Order, type: :model do

  it { should belong_to(:user) }
  it { should have_and_belong_to_many(:products) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:total) }
end
