rand = Random.new
Food.create name: "Nem",
            img_url: "123124asdasd",
            price: "12",
            food_category_id: "1",
            rating_avg: "100"

FoodCategory.create name: "Ran"

FoodCategory.create(name: "Truyen thong")

User.create(name: "Hieu",
            email:"hieu@gmail.com", user_type: "3",
            password: "12345678",
            password_confirmation: "12345678",
            username: "hieuhieu",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Employee",
            email:"hieu12@gmail.com", user_type: "2",
            password: "12345678",
            password_confirmation: "12345678",
            username: "employee",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Linh",
            email: "example@gmail.com",
            user_type: 2,
            password: "12345678",
            password_confirmation: "12345678",
            username: "Linh17",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Chien",
            email: "chien@gmail.com",
            user_type: 3,
            password: "12345678",
            password_confirmation: "12345678",
            username: "ChienChien",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "LinhLinh",
            email: "Linh@gmail.com",
            user_type: 3,
            password: "12345678",
            password_confirmation: "12345678",
            username: "Linh12",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Quang",
            email: "quang@gmail.com",
            user_type: 3,
            password: "12345678",
            password_confirmation: "12345678",
            username: "Quang13",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Nam",
            email: "nam1@gmail.com",
            user_type: 4,
            password: "12345678",
            password_confirmation: "12345678",
            username: "Nam112",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Boss",
            email: "boss@gmail.com",
            user_type: 1,
            password: "12345678",
            password_confirmation: "12345678",
            username: "admin_restaurant",
            activated: true,
            avatar_url: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

100.times do |n|
  name = "Nem"
  img_url = "https://eva-img.24hstatic.com/upload/2-2017/images/2017-06-08/10-mon-ngon-tu-thit-bam-an-cung-com-trang-het-veo-3-noi-1-1496896543-width600height450.jpg"
  price = 1.5
  food_category_id = 1
  user_id = (n%5 + 1)
  rating_avg = 4.0
  Food.create(name: name,
               img_url: img_url,
               price: price,
               food_category_id: food_category_id,
               user_id: user_id,
               rating_avg: rating_avg)
end

20.times do |n|
  customer_id = 7
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

60.times do |n|
  quantity = 100
  order_id = n%20 + 1
  food_id = 1
  price = 2
  OrderDetail.create(quantity: quantity,
                     order_id: order_id,
                     food_id: food_id,
                     total_money: price)
end

40.times do |n|
  customer_id = 7
  employee_id = 2
  address = Faker::Address.street_address
  food = Food.find(n + 1)
  total_money = food.price
  status = 3
  order = Order.create(customer_id: customer_id,
               employee_id: employee_id,
               address: address,
               total_money: total_money,
               status: status)
  order.order_details.create(food_id: food.id, quantity: 1, total_money: total_money )
end

Food.all.each do |f|
  User.limit(5).each do |u|
    f.comments.create(content: Faker::Lorem.sentence(30),user_id: u.id)
    f.comments.create(content: Faker::Lorem.sentence(30),user_id: u.id)
    f.comments.create(content: Faker::Lorem.sentence(30),user_id: u.id)
    f.comments.create(content: Faker::Lorem.sentence(30),user_id: u.id)
    f.comments.create(content: Faker::Lorem.sentence(30),user_id: u.id)
    f.comments.create(content: Faker::Lorem.sentence(30),user_id: u.id)
  end
end
