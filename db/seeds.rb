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
# condition = ["Perfect", "Good", "Damaged", "Serviced"]

# Diets
d1 = Diet.create!(name: "Ugali", diet_type: "Weight loss", image: "")
d2 = Diet.create!(name: "Rice", diet_type: "Weight gain", image: "")
d3 = Diet.create!(name: "Eggs", diet_type: "Weight gain", image: "")
d4 = Diet.create!(name: "Bread", diet_type: "Weight loss", image: "")
d5 = Diet.create!(name: "Oats", diet_type: "Weight loss", image: "")
d6 = Diet.create!(name: "Meat", diet_type: "Weight gain", image: "")

# Machines
machine1 = Machine.create!(name: "dumbell", image: "", number: 12, condition: "Good")
machine2 = Machine.create!(name: "Barbell", image: "", number: 8, condition: "Perfect")
machine3 = Machine.create!(name: "Tread Mill", image: "", number: 2, condition: "Serviced")
machine4 = Machine.create!(name: "Squat Rack", image: "", number: 2, condition: "Good")
machine5 = Machine.create!(name: "Bench Press Station", image: "", number: 1, condition: "Good")
machine6 = Machine.create!(name: "Shoulder Press Station", image: "", number: 2, condition: "Damaged")
machine7 = Machine.create!(name: "Plastic Plates", image: "", number: 12, condition: "Perfect")
machine8 = Machine.create!(name: "Metallic Plates", image: "", number: 12, condition: "Perfect")
machine9 = Machine.create!(name: "Back Machine", image: "", number: 1, condition: "Perfect")
machine = Machine.create!(name: "Preacher", image: "", number: 1, condition: "Perfect")


# Trainer
trainer1 = Trainer.create!(name: "Oliver Twist", age: 32, email: "oliver@gmail.com", phone_number: "0728748441", image: "")
trainer2 = Trainer.create!(name: "Martin Lawrence", age: 28, email: "martin@gmail.com", phone_number: "0728748441", image: "")
trainer3 = Trainer.create!(name: "Packson Mwangi", age: 32, email: "packson@gmail.com", phone_number: "0728748441", image: "")
trainer4 = Trainer.create!(name: "Joash Machoka", age: 23, email: "joash@gmail.com", phone_number: "0728748441", image: "")
trainer5 = Trainer.create!(name: "Grace Ndanu", age: 22, email: "grace@gmail.com", phone_number: "0728748441", image: "")
trainer6 = Trainer.create!(name: "Caleb Muthiira", age: 22, email: "caleb@gmail.com", phone_number: "0728748441", image: "")
trainer7 = Trainer.create!(name: "Roy Masai", age: 32, email: "roy@gmail.com", phone_number: "0728748441", image: "")
trainer8 = Trainer.create!(name: "Lilian Wangechi", age: 32, email: "lilian@gmail.com", phone_number: "0728748441", image: "")

# Clients
c1 = Client.create!(name: "Joash", email: "machokajoash@gmail.com", image: "", level: level.any?, password: "joash", age: 23, phone_number: "0728748441", trainer_id: trainer1.id, diet_id: d1.id, payment_info: payment_info.any?, weight: 72, target_weight: 90)

# Supplements
supplements1 = Supplement.create!(name: "Mass Gainer", supplement_type: "Rapid Weight Gain", amount: 2, client_id: 1)
supplements2 = Supplement.create!(name: "Creatine", supplement_type: "Muscle Gain", amount: 1, client_id: 1)
supplements3 = Supplement.create!(name: "Protein Supplements", supplement_type: "Muscle Growth", amount: 1, client_id: 1)
supplements4 = Supplement.create!(name: "Weight Gainers", supplement_type: "Weight Gain", amount: 2, client_id: 1)
supplements5 = Supplement.create!(name: "Beta-alanine", supplement_type: "Improve Exercise Performance", amount: 2, client_id: 1)
supplements6 = Supplement.create!(name: "Branched-chain amino acids", supplement_type: "Muscle Gain", amount: 1, client_id: 1)
supplements7 = Supplement.create!(name: "Beta-hydroxy beta-methylbutyrate", supplement_type: "Intensity Training", amount: 2, client_id: 1)



# Exercises
exercise1 = Exercise.create!(name: "Back Squat", exercise_type: "Leg Exercise", client_id: c1.id)
exercise2 = Exercise.create!(name: "Front Squat", exercise_type: "Leg Exercise", client_id: c1.id)
exercise3 = Exercise.create!(name: "Lunges", exercise_type: "Leg Exercise", client_id: c1.id)
exercise4 = Exercise.create!(name: "Bench Press", exercise_type: "Chest", client_id: c1.id)
exercise5 = Exercise.create!(name: "Preacher Curls", exercise_type: "Bicep Exercise", client_id: c1.id)
exercise6 = Exercise.create!(name: "Barbell Curls", exercise_type: "Bicep Exercise", client_id: c1.id)
exercise6 = Exercise.create!(name: "Dumbell Curls", exercise_type: "Bicep Exercise", client_id: c1.id)
exercise7 = Exercise.create!(name: "Shoulder Press", exercise_type: "Shoulder Exercise", client_id: c1.id)
exercise8 = Exercise.create!(name: "Barbell Rows", exercise_type: "Back Exercise", client_id: c1.id)
exercise9 = Exercise.create!(name: "Dumbell Rows", exercise_type: "Back Exercise", client_id: c1.id)
exercise11 = Exercise.create!(name: "Lying Tricep Extensions", exercise_type: "Tricep Exercise", client_id: c1.id)
exercise12 = Exercise.create!(name: "Tricep Dips", exercise_type: "Tricep Exercise", client_id: c1.id)
exercise13 = Exercise.create!(name: "Cable Curls", exercise_type: "Bicep Exercise", client_id: c1.id)
exercise14 = Exercise.create!(name: "Hammer Curls", exercise_type: "Bicep Exercise", client_id: c1.id)
exercise14 = Exercise.create!(name: "Pull ups", exercise_type: "Back Exercise", client_id: c1.id)


# Machine, Exercise
me1 = MachineExercise.create!(machine_id: machine1.id, exercise_id: exercise6.id)
me2 = MachineExercise.create!(machine_id: machine1.id, exercise_id: exercise7.id)
me3 = MachineExercise.create!(machine_id: machine1.id, exercise_id: exercise9.id)
me4 = MachineExercise.create!(machine_id: machine1.id, exercise_id: exercise14.id)
me1 = MachineExercise.create!(machine_id: machine2.id, exercise_id: exercise2.id)
me1 = MachineExercise.create!(machine_id: machine2.id, exercise_id: exercise4.id)
me1 = MachineExercise.create!(machine_id: machine2.id, exercise_id: exercise8.id)
me1 = MachineExercise.create!(machine_id: machine.id, exercise_id: exercise5.id)
me1 = MachineExercise.create!(machine_id: machine6.id, exercise_id: exercise7.id)



puts "Done Seeding"

