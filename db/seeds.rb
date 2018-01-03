Food.create name: "Nem",
            img_url: "123124asdasd",
            price: "12",
            food_category_id: "1",
            rating_avg: "100",
            rate_count: "1"

FoodCategory.create name: "Ran"

FoodCategory.create(name: "Truyen thong")

User.create(name: "Hieu",
            email:"hieu@gmail.com", usertype: "3",
            password: "12345678",
            password_confirmation: "12345678",
            username: "hieuhieu",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Chien",
            email:"hieu1@gmail.com", usertype: 2,
            password: "12345678",
            password_confirmation: "12345678",
            username: "employee",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")


User.create(name: "Linh",
              email: "example@gmail.com",
              usertype: 3,
              password: "12345678",
              password_confirmation: "12345678",
              username: "Linh17",
              avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Chien",
            email: "chien@gmail.com",
            usertype: 3,
            password: "12345678",
            password_confirmation: "12345678",
            username: "ChienChien",
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "LinhLinh",
            email: "Linh@gmail.com",
            usertype: 3,
            password: "12345678",
            password_confirmation: "12345678",
            username: "Linh12",
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Quang",
            email: "quang@gmail.com",
            usertype: 3,
            password: "12345678",
            password_confirmation: "12345678",
            username: "Quang13",
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

100.times do |n|
  name = "Nem"
  img_url = "https://eva-img.24hstatic.com/upload/2-2017/images/2017-06-08/10-mon-ngon-tu-thit-bam-an-cung-com-trang-het-veo-3-noi-1-1496896543-width600height450.jpg"
  price = 1.5
  food_category_id = 1
  user_id = (n%5 + 1)
  rating_avg = 4.0
  rate_count = 50
  Food.create(name: name,
               img_url: img_url,
               price: price,
               food_category_id: food_category_id,
               user_id: user_id,
               rating_avg: rating_avg,
               rate_count: rate_count)
end

20.times do |n|
  customer_id = 1
  employee_id = 2
  address = "Ha Noi"
  total_money = 20
  status = 1
  Order.create(customer_id: customer_id,
               employee_id: employee_id,
               address: address,
               total_money: total_money,
               status: status)
end

20.times do |n|
  quantity = 100
  order_id = 2
  food_id = 1
  price = 2
  OrderDetail.create(quantity: quantity,
                      order_id: order_id,
                      food_id: food_id,
                      price: price)

end

Food.all.each do |f|
  User.limit(5).each do |u|
    f.comment_foods.create(content: Faker::Lorem.sentence(50),user_id: u.id)
    f.comment_foods.create(content: Faker::Lorem.sentence(50),user_id: u.id)
    f.comment_foods.create(content: Faker::Lorem.sentence(50),user_id: u.id)
    f.comment_foods.create(content: Faker::Lorem.sentence(50),user_id: u.id)
    f.comment_foods.create(content: Faker::Lorem.sentence(50),user_id: u.id)
    f.comment_foods.create(content: Faker::Lorem.sentence(50),user_id: u.id)
  end
end
