# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.first || User.create(username: 'red' , email: 'red@red.com', password: 'password', address: '111 the street', admin: true);

user2 = User.second || User.create(username: 'test' , email: 'test@test.com', password: 'password', address: '222 test avenue', admin: false);


products_arr = [
                  {
                    name: "Product one",
                    description: "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                    price: 100,
                    stock: 2,
                    category: "Running"
                  },
                  {
                    name: "Product two",
                    description: "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                    price: 200,
                    stock: 1,
                    category: "Swimming"
                  },
                  {
                    name: "Product three",
                    description: "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                    price: 400,
                    stock: 5,
                    category: "Clothing"
                  },
                  {
                    name: "Product four",
                    description: "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                    price: 150,
                    stock: 10,
                    category: "Other"
                  }
            ]


products_arr.each do |p|
  Product.create(p)
end
