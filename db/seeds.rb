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
d1 = Diet.create!(name: "Ugali", diet_type: "Weight loss", image: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/a2/4c/e9/ugali-served-with-pork.jpg")
d2 = Diet.create!(name: "Rice", diet_type: "Weight gain", image: "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_16:9/k%2Farchive%2F813c4b9f696adbccead51ca61acde52488ff8dba")
d3 = Diet.create!(name: "Eggs", diet_type: "Weight gain", image: "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/03/How-to-Boil-Eggs-main-1-2.jpg")
d4 = Diet.create!(name: "Bread", diet_type: "Weight loss", image: "https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg")
d5 = Diet.create!(name: "Oats", diet_type: "Weight loss", image: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/topic_centers/2020-7/oats-oatmeal-1296x728-header.jpg?w=1155&h=1528")
d6 = Diet.create!(name: "Meat", diet_type: "Weight gain", image: "https://hips.hearstapps.com/amv-prod-gp.s3.amazonaws.com/gearpatrol/wp-content/uploads/2019/12/10-Places-To-Buy-Meat-Online-Gear-Patrol-lead-full-v2.jpg?crop=1.00xw:0.749xh;0,0.0740xh&resize=1200:*")

# Machines
machine1 = Machine.create!(name: "dumbell", image: "https://www.mysport.ie/wp-content/uploads/2021/04/Urban_Fitness_20kg_Dumbell_set.jpg", number: 12, condition: "Good")
machine2 = Machine.create!(name: "Barbell", image: "https://nwscdn.com/media/catalog/product/cache/all/thumbnail/800x/0dc2d03fe217f8c83829496872af24a0/2/5/25kg_1_5.jpg", number: 8, condition: "Perfect")
machine3 = Machine.create!(name: "Tread Mill", image: "https://static.nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/67916f7c-35d6-48a9-9084-1b31e1218a2c/the-5-benefits-of-running-on-a-treadmill-according-to-experts.jpg", number: 2, condition: "Serviced")
machine4 = Machine.create!(name: "Squat Rack", image: "https://cdn11.bigcommerce.com/s-47lrg8qzg0/images/stencil/1280x1280/products/11733/255077/fsr90-functional-trainer-smith-squat-rack-machine_3__18606.1673057537.jpg?c=1", number: 2, condition: "Good")
machine5 = Machine.create!(name: "Bench Press Station", image: "https://www.powergymfitness.co.uk/wp-content/uploads/2016/12/decline-bench-press-station-01-min.jpg", number: 1, condition: "Good")
machine6 = Machine.create!(name: "Shoulder Press Station", image: "https://img.medicalexpo.com/images_me/photo-mg/70274-10267491.jpg", number: 2, condition: "Damaged")
machine7 = Machine.create!(name: "Plastic Plates", image: "http://sc04.alicdn.com/kf/H42c99b97ac354c5ab26d3b3fe973ac75E.png", number: 12, condition: "Perfect")
machine8 = Machine.create!(name: "Metallic Plates", image: "https://thumbs.dreamstime.com/z/professional-dumbbell-weight-plates-over-beige-background-black-metal-dumbbell-chrome-silver-handle-gym-professional-145033374.jpg", number: 12, condition: "Perfect")
machine9 = Machine.create!(name: "Back Machine", image: "https://d1xdq93s712gxs.cloudfront.net/images/2021_A250_UPPER_BACK-Right_Three_Quarter-cinv-1627420061682609.jpg", number: 1, condition: "Perfect")
machine = Machine.create!(name: "Preacher", image: "https://5.imimg.com/data5/XK/BX/MY-37112304/preacher-bench-500x500.jpg", number: 1, condition: "Perfect")


# Trainer
trainer1 = Trainer.create!(name: "Oliver Twist", age: 32, email: "oliver@gmail.com", image: "https://img.freepik.com/premium-photo/sport-muscular-fitness-man-working-out-gym_174475-134.jpg?w=2000", phone_number: "0728748441")
trainer2 = Trainer.create!(name: "Martin Lawrence", age: 28, email: "martin@gmail.com", phone_number: "0728748441", image: "https://thumbs.dreamstime.com/b/african-american-fitness-trainer-14694263.jpg")
trainer3 = Trainer.create!(name: "Packson Mwangi", age: 32, email: "packson@gmail.com", phone_number: "0728748441", image: "https://media.istockphoto.com/id/475395886/photo/young-african-american-male-personal-trainer.jpg?s=612x612&w=0&k=20&c=imx4dY8M7Ty4olIyo9x0MX2h3L9CE-iHQEIX3LSGnFo=")
trainer4 = Trainer.create!(name: "Joash Machoka", age: 23, email: "joash@gmail.com", phone_number: "0728748441", image: "https://img.freepik.com/premium-photo/strong-fitness-trainer-with-naked-torso-poses-cross-hands-gym-background-handsome-african-american-athlete_116317-9031.jpg")
trainer5 = Trainer.create!(name: "Grace Ndanu", age: 22, email: "grace@gmail.com", phone_number: "0728748441", image: "https://www.afaa.com/images/default-source/2020/pages/home/afaa-group-fitness-certification.jpg?sfvrsn=236a314_0")
trainer6 = Trainer.create!(name: "Caleb Muthiira", age: 22, email: "caleb@gmail.com", phone_number: "0728748441", image: "https://media.istockphoto.com/id/843435036/photo/portrait-of-an-afro-athletic-man.jpg?s=612x612&w=0&k=20&c=Vpvtf1pKXHYRHIHdj4qwDTOnQ10Lcvft-jmNVT2jcHA=")
trainer7 = Trainer.create!(name: "Roy Masai", age: 32, email: "roy@gmail.com", phone_number: "0728748441", image: "https://i0.wp.com/personaltrainersdubai.com/wp-content/uploads/2022/08/Ljubo-Coach.png")
trainer8 = Trainer.create!(name: "Lilian Wangechi", age: 32, email: "lilian@gmail.com", phone_number: "0728748441", image: "https://cdn.shopify.com/s/files/1/0557/9004/3326/files/tess1024x1024_1600x.jpg?v=1635881652")

# Clients

c1 = Client.create!(name: "Joash", email: "mach@gmail.com", image: "https://production-next-images-cdn.thumbtack.com/i/447226666005553166/width/1024.jpeg", level: level.sample, password: "joash", age: 23, phone_number: "0728748441", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: true)
c2 = Client.create!(name: "Mike", email: "mike@gmail.com", image: "https://media.istockphoto.com/id/1320391277/photo/profile-view-powerful-mid-adult-woman-weightlifting-at-gym.jpg?s=612x612&w=0&k=20&c=SNkpSDm94jtkrYgLBuOWyrVdn4m7Jf7pgrbMRambQ-k=", level: level.sample, password: "joash", age: 24, phone_number: "0728748442", trainer_id: trainer1.id, diet_type: "Weight loss", payment_info: payment_info.sample, weight: 90, target_weight: 80, admin: false)
c3 = Client.create!(name: "Nicole", email: "Nicole@gmail.com", image: "https://media.istockphoto.com/id/874837090/photo/young-woman-weightraining-at-the-gym.jpg?s=170667a&w=0&k=20&c=UU6Qu-aku4-bM5tR9QVdUHBSsw18fTvQwGZ3l4XlFNg=", level: level.sample, password: "joash", age: 27, phone_number: "0728748443", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c4 = Client.create!(name: "Kim", email: "Kim@gmail.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeAZyDAiIa801h9HPczskeCB9gJfoQjRSnBw&usqp=CAU", level: level.sample, password: "joash", age: 26, phone_number: "0728748444", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c5 = Client.create!(name: "Brain", email: "Brain@gmail.com", image: "https://img.freepik.com/premium-photo/handsome-man-good-shape-with-muscles-gym_219728-4174.jpg", level: level.sample, password: "joash", age: 28, phone_number: "0728748445", trainer_id: trainer1.id, diet_type: "Weight loss", payment_info: payment_info.sample, weight: 72, target_weight: 60, admin: false)
c6 = Client.create!(name: "Ali", email: "Ali@gmail.com", image: "https://img.freepik.com/free-photo/attractive-fit-man-working-out-indoors-with-dumbbells_23-2149175334.jpg?w=2000", level: level.sample, password: "joash", age: 33, phone_number: "0728748341", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c7 = Client.create!(name: "Nick", email: "Nick@gmail.com", image: "https://spotonphotographers.com/wp-content/uploads/2021/07/DSC03562-ps-insta-tall.jpg", level: level.sample, password: "joash", age: 53, phone_number: "0728748447", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c8 = Client.create!(name: "Josh", email: "Josh@gmail.com", image: "https://spotonphotographers.com/wp-content/uploads/2021/07/DSC03590-ps-insta-tall.jpg", level: level.sample, password: "joash", age: 18, phone_number: "0728748448", trainer_id: trainer1.id, diet_type: "Weight loss", payment_info: payment_info.sample, weight: 80, target_weight: 70, admin: false)
c9 = Client.create!(name: "Joan", email: "Joan@gmail.com", image: "https://www.at-edge.com/images/artistimages/images/14340_328098@2x.jpg", level: level.sample, password: "joash", age: 29, phone_number: "0728748441", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c10 = Client.create!(name: "Tomashi", email: "Tomashi@gmail.com", image: "https://i2.wp.com/cypheravenue.com/wp-content/uploads/2015/10/dolvette-low-res-4.jpg?resize=705%2C1024&ssl=1", level: level.sample, password: "joash", age: 27, phone_number: "0738748441", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c11= Client.create!(name: "Kyle", email: "Kyle@gmail.com", image: "https://blackdoctor.org/wp-content/uploads/2017/07/222.jpg", level: level.sample, password: "joash", age: 21, phone_number: "0758748441", trainer_id: trainer1.id, diet_type: "Weight loss", payment_info: payment_info.sample, weight: 71, target_weight: 60, admin: false)
c12 = Client.create!(name: "John", email: "John@gmail.com", image: "https://media.istockphoto.com/id/1337244046/photo/portrait-of-a-young-fit-sweaty-man-sitting-in-the-gym-after-his-workout.jpg?s=612x612&w=0&k=20&c=bmZE1YkPBZHiLY1H20zdvJcZ3yEo0NgL2d4AMb0zGeI=", level: level.sample, password: "joash", age: 22, phone_number: "0798748441", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)
c13 = Client.create!(name: "Peete", email: "Peete@gmail.com", image: "https://www.shutterstock.com/image-photo/smiling-african-american-athletic-man-260nw-1906396111.jpg", level: level.sample, password: "joash", age: 23, phone_number: "0728748221", trainer_id: trainer1.id, diet_type: "Weight gain", payment_info: payment_info.sample, weight: 72, target_weight: 90, admin: false)


# Supplements
supplements1 = Supplement.create!(name: "Mass Gainer", supplement_type: "Rapid Weight Gain", amount: 2, client_id: 1, image: "https://c8.alamy.com/comp/JA36T5/3d-render-of-mass-gainer-bottles-isolated-over-white-background-JA36T5.jpg")
supplements2 = Supplement.create!(name: "Creatine", supplement_type: "Muscle Gain", amount: 1, client_id: 1, image: "https://img.freepik.com/free-vector/realistic-set-two-barbells-sport-supplement-glassy-surface-white-background-vector-illustration_1284-19886.jpg")
supplements3 = Supplement.create!(name: "Protein Supplements", supplement_type: "Muscle Growth", amount: 1, client_id: 1, image: "https://cdn2.stylecraze.com/wp-content/uploads/2014/07/Protein-Supplements.jpg")
supplements4 = Supplement.create!(name: "Weight Gainers", supplement_type: "Weight Gain", amount: 2, client_id: 1, image: "https://m.media-amazon.com/images/I/61jU-YTiR8L._SY450_.jpg")
supplements5 = Supplement.create!(name: "Beta-alanine", supplement_type: "Improve Exercise Performance", amount: 2, client_id: 1, image: "https://www.ironbody.de/images/product_images/original_images/BetaAlaine.jpg")
supplements6 = Supplement.create!(name: "Branched-chain amino acids", supplement_type: "Muscle Gain", amount: 1, client_id: 1, image: "https://sport.wetestyoutrust.com/sites/default/files/styles/original/public/2020-09/Now%20Foods%20-%20NOW%20Sports%20Branched%20Chain%20Amino%20Acids%20Powder%20-%201.png?itok=7YvjgmL3")
supplements7 = Supplement.create!(name: "Beta-hydroxy beta-methylbutyrate", supplement_type: "Intensity Training", amount: 2, client_id: 1, image: "https://images-na.ssl-images-amazon.com/images/I/41ORf3GkrKL._UL500_.jpg")



# Exercises
exercise1 = Exercise.create!(name: "Back Squat", exercise_type: "Leg Exercise", client_id: c1.id, exercise_image: "https://julielohre.com/wp-content/uploads/2017/11/Barbell-Back-Squat.jpg")
exercise2 = Exercise.create!(name: "Front Squat", exercise_type: "Leg Exercise", client_id: c1.id, exercise_image: "https://legionathletics.com/wp-content/uploads/2022/04/Blogpost-Size-barbellfrontsquat-17.03.2022.png")
exercise3 = Exercise.create!(name: "Lunges", exercise_type: "Leg Exercise", client_id: c1.id, exercise_image: "https://evofitness.at/wp-content/uploads/2020/02/EVO-2020-PP-March-Banner_23.jpg")
exercise4 = Exercise.create!(name: "Bench Press", exercise_type: "Chest", client_id: c1.id, exercise_image: "https://cdn.mos.cms.futurecdn.net/pLaRi5jXSHDKu6WRydetBo-1200-80.jpg")
exercise5 = Exercise.create!(name: "Preacher Curls", exercise_type: "Bicep Exercise", client_id: c1.id, exercise_image: "https://www.thisiswhyimfit.com/wp-content/uploads/2022/02/Preacher-Curl-Alternatives.jpg")
exercise6 = Exercise.create!(name: "Barbell Curls", exercise_type: "Bicep Exercise", client_id: c1.id, exercise_image: "https://cdn.shopify.com/s/files/1/1876/4703/articles/shutterstock_1330227065_1000x.jpg?v=1636217410")
exercise6 = Exercise.create!(name: "Dumbell Curls", exercise_type: "Bicep Exercise", client_id: c1.id, exercise_image: "https://cdn.mos.cms.futurecdn.net/PUh4gpdENASaQybBDXAgPj.jpg")
exercise7 = Exercise.create!(name: "Shoulder Press", exercise_type: "Shoulder Exercise", client_id: c1.id, exercise_image: "https://i.ytimg.com/vi/b5JzUH8gsOg/maxresdefault.jpg")
exercise8 = Exercise.create!(name: "Barbell Rows", exercise_type: "Back Exercise", client_id: c1.id, exercise_image: "https://www.muscleandfitness.com/wp-content/uploads/2019/03/barbell-bentover-row-1109.jpg?quality=86&strip=all")
exercise9 = Exercise.create!(name: "Dumbell Rows", exercise_type: "Back Exercise", client_id: c1.id, exercise_image: "https://hips.hearstapps.com/hmg-prod/images/form-check-index-1552580046.png")
exercise11 = Exercise.create!(name: "Lying Tricep Extensions", exercise_type: "Tricep Exercise", client_id: c1.id, exercise_image: "https://bod-blog-assets.prod.cd.beachbodyondemand.com/bod-blog/wp-content/uploads/2016/11/10131130/Skull_Crushers_1675-2000x1000-1.jpeg")
exercise12 = Exercise.create!(name: "Tricep Dips", exercise_type: "Tricep Exercise", client_id: c1.id, exercise_image: "https://img.freepik.com/free-photo/profile-beautiful-active-woman-her-30s-wearing-black-activewear-doing-tricep-dips-with-jump-box_662251-1343.jpg?w=2000")
exercise13 = Exercise.create!(name: "Cable Curls", exercise_type: "Bicep Exercise", client_id: c1.id, exercise_image: "https://www.verywellfit.com/thmb/8NfMBTAZPexG6f2dNg1PolMwwJQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/54-3498289-Biceps-Cable-Curl-GIF-204a7e1692d44c78950100362cc5b986.gif")
exercise14 = Exercise.create!(name: "Hammer Curls", exercise_type: "Bicep Exercise", client_id: c1.id, exercise_image: "https://julielohre.com/wp-content/uploads/2018/07/HammerCurls.jpg")
exercise14 = Exercise.create!(name: "Pull ups", exercise_type: "Back Exercise", client_id: c1.id, exercise_image: "https://s3.amazonaws.com/prod.skimble/assets/1782050/skimble-workout-trainer-exercise-reverse-pull-ups-2_iphone.jpg")


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