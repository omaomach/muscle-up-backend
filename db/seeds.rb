# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

levels = ["beginner", "intermediate", "expert"]
payments = ["approved", "pending"]

Client.create(name: Faker::Name.name ,email: "muscleup@gmail.com", image: Faker::Avatar.image, level: levels.sample, age: rand(15..60), phone_number: Faker::PhoneNumber.phone_number, trainer_id: 1, diet_id:2, payment_info:payments.sample, admin_id:1, weight: rand(35..120), supplements_id: 2, exercise_id:2, target_weight: rand(35..120))

Diet.create(name: Faker::Food.dish, image: "image.com", gain_id:1, loss_id: 3)
names = ["Treadmill", "Barbell Set", "Rowing machine", "Stationary bicycle", "Dumbbell set"]
conditions = ["good", "bad"]
Equipment.create(name: names.sample, image: "image.com", number: rand(5..10), condition: conditions.sample)


exercises = ["Pushups", "Dumbbell rows", "Side planks", "Standing overhead dumbbell presses", "Single-leg deadlifts", "Lunges"]
type = ["musle gain", "weight loss", "stretch"]
Exercise.create(name: exercises.sample, exercise_type: type.sample)
EquipmentExercise.create(equipment_id:1, exercise_id:2)


Gain.create(gain_type:"protein", description: Faker::Food.description )

Loss.create(loss_type:"protein", description: Faker::Food.description )

Gym.create(name:"MuscleUp", location:Faker::Address.city, open_hours:"8am-8pm", description: "gym lets work out")

Review.create(client_id: 1, review:"fantastic gym")

Service.create(description: "gumba dance", image: "image.com", name: "gumba dance")

Supplement.create(name:"protein powder", supplement_type:"weight gain", amount:2 )

Trainer.create(name:Faker::Name.name, age: rand(23..35), email:"trainer@gmail.com", phone_number:Faker::PhoneNumber.phone_number, image: "image.com")