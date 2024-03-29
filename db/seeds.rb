require "open-uri"
puts "Destroying all users"
User.destroy_all
puts "Destroying all posts"
Post.destroy_all
puts "Destroying all subscribers"
Subscriber.destroy_all

puts "Creating a user"
user1 = User.create!(email: "detoledo.liliane@gmail.com", password: "DnJ;6]93s3Gw+k", user_type: "admin")

puts "User1 (admin) created!"

user2 = User.create!(email: "janine@gmail.com", password: "azerty", user_type: "poster")
puts "User2 (poster) created!"

user3 = User.create!(email: "louisette@gmail.com", password: "azerty", user_type: "poster")
puts "User3 (user) created!"


puts "Creating a post"
post1 = Post.create!(title: "Le titre du post", category: "Créer le futur", content: "Le contenu du post", user_id: user1.id)
post1.image.attach(io: URI.open("https://res.cloudinary.com/dzj7zluu6/image/upload/v1699982054/hqc34k5wc3vseruvnt7e.jpg"), filename: "nom_de_l_image1.jpg")
puts "Post1 created !"

post2 = Post.create!(title: "Le titre du post", category: "Méditation et spiritualité", content: "Le contenu du post", user_id: user2.id)
post2.image.attach(io: URI.open("https://res.cloudinary.com/dzj7zluu6/image/upload/v1699982054/jsctrtccgmifhftms4ss.jpg"), filename: "nom_de_l_image1.jpg")
puts "Post2 created!"

post3 = Post.create!(title: "Le titre du post", category: "Comprendre l\'actualité", content: "Le contenu du post", user_id: user3.id)
post3.image.attach(io: URI.open("https://res.cloudinary.com/dzj7zluu6/image/upload/v1699982054/ntmdn7okqjuzydxgrygz.jpg"), filename: "nom_de_l_image1.jpg")
puts "Post3 created !"


puts "Finish!"
