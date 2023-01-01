# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding"

level = ["Beginner", "Intermediate", "Professional"]
payment_info = ["Complete", "Partial", "Incomplete"]
condition = ["Perfect", "Good", "Damaged"]

# Diets
d1 = Diet.create!(name: "Ugali", diet_type: "Weight loss", image: "")

# Machines
machine1 = Machine.create!(name: "10kg dumbell", image: "", number: 4, condition: condition.any?)

# Trainer
trainer1 = Trainer.create!(name: "Oliver", age: 32, email: "oliver@gmail.com", phone_number: "0728748441", image: "")

# Clients
c1 = Client.create!(name: "Joash", email: "machokajoash@gmail.com", image: "", level: level.any?, password: "joash", age: 23, phone_number: "0728748441", trainer_id: trainer1.id, diet_id: d1.id, payment_info: payment_info.any?, weight: 72, target_weight: 90)

# Supplements
supplements1 = Supplement.create!(name: "Mass Gainer", supplement_type: "Rapid Weight Gain", amount: 2, client_id: c1.id)

# Exercises
exercise1 = Exercise.create!(name: "Back Squat", exercise_type: "Leg Exercise", client_id: c1.id)

# Machine, Exercise
me1 = MachineExercise.create!(machine_id: machine1.id, exercise_id: exercise1.id)

puts "Done Seeding"

