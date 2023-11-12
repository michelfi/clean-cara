
puts "Destroying all users"
User.destroy_all
puts "Destroying all posts"
Post.destroy_all
puts "Destroying all subscribers"
Subscriber.destroy_all

puts "Creating a user"
user1 = User.create!(email: "michel.figueres@gmail.com", password: "azerty", user_type: "admin")

puts "User1 (admin) created!"

user2 = User.create!(email: "janine@gmail.com", password: "azerty", user_type: "poster")
puts "User2 (poster) created!"

user3 = User.create!(email: "louisette@gmail.com", password: "azerty", user_type: "poster")
puts "User3 (user) created!"


puts "Creating a post"
post1 = Post.create!(title: "Le titre du post", category: "La catégorie du post", content: "Le contenu du post", user: user1)
# post1.image.attach(io: File.open(Rails.root.join("storage/road-1072821_1280.jpeg")), filename: "nom_de_l_image1.jpg")
puts "Post1 created !"

post2 = Post.create!(title: "Le titre du post", category: "La catégorie du post", content: "Le contenu du post", user: user2)
# post2.image.attach(io: File.open(Rails.root.join("storage/road-1072823_1280.jpeg")), filename: "nom_de_l_image2.jpg")
puts "Post2 created!"

post3 = Post.create!(title: "Le titre du post", category: "La catégorie du post", content: "Le contenu du post", user: user3)
# post3.image.attach(io: File.open(Rails.root.join("storage/tree-736885_1280.jpeg")), filename: "nom_de_l_image3.jpg")
puts "Post3 created !"


puts "Finish!"
