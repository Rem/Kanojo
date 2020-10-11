# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: 'Chris', age: 21,  gender: 'Male', rating: 5, password_digest: 'pw', phone_number: 100000001, photo: 'https://tr.rbxcdn.com/934882da0d83533bdffb2a18893de431/420/420/Decal/Png')

user2 = User.create(name: 'John', age: 22,  gender: 'Male', rating: 4, password_digest: 'pw', phone_number: 100000002, photo: 'https://wallpapercave.com/wp/wp4069035.jpg')

user3 = User.create(name: 'Adam', age: 23,  gender: 'Male', rating: 3, password_digest: 'pw', phone_number: 100000003, photo: 'https://hairstylecamp.com/wp-content/uploads/anime-guy-with-black-hair-and-blue-eyes.jpg')


gf1 = Girlfriend.create(name: 'Jen', age: 23,  gender: 'Female', height: 163,  rating: 3, password_digest: 'pw', phone_number: 100000004 , photo: 'https://cdna.artstation.com/p/assets/images/images/019/293/032/large/kiki-andriansyah-hex-y.jpg?1562838735')

gf2 = Girlfriend.create(name: 'Rachel', age: 19,  gender: 'Female', height: 180,  rating: 4.5, password_digest: 'pw', phone_number: 100000005 , photo: 'https://i.pinimg.com/originals/35/d6/8a/35d68a8d743e7dab89cb1e55b44acd18.jpg')

gf3 = Girlfriend.create(name: 'Yuki', age: 20,  gender: 'Female', height: 155,  rating: 5, password_digest: 'pw', phone_number: 100000006 , photo: 'https://3.bp.blogspot.com/-YAzqEWck0BA/XOlXuvnlElI/AAAAAAAADIU/yxtqQvv9YCs_9f4WjLU2caYLFmiMSb14gCKgBGAs/w0/beautiful-anime-girl-uhdpaper.com-4K-162.jpg')

