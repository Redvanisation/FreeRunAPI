FactoryBot.define do
  factory :product do
    id { 1 }
    name { 'product-1' }
    description { 'lorem  ipusmlorem  ipusm lorem  ipusm lorem  ipusm' }
    price { 100 }
    stock { 2 }
    category { 'new' }
    image { 'fndjfhsdj' }
  end
end