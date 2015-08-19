namespace :db do

 desc "Clear the db and fill with sample data"
 task :populate => :environment do
   require 'populator'
   require 'faker'

   #Clear out old stuff
   [Dog, Owner].each(&:destroy_all)

   #Add fake data to those tables
   Breed.all.each do |breed|

   #create dogs for the owner
      Owner.populate 1..5 do |owner|
       #set the artist name and genre id
       owner.first_name = Faker::Name.first_name
       owner.last_name = Faker::Name.last_name
       
     

       #create dogs for the owner
       Dog.populate 1..5 do |dog|
         #set the artist name and genre id
         dog.name = Faker::Name.first_name
         dog.owner_id = owner.id
         dog.breed_id = breed.id
         dog.dob = Faker::Date.backward(14)
         dog.allergies = Faker::Name.last_name
         dog.vet_name = Faker::Name.name
         dog.vet_phone = Faker::Number.number(10)
         dog.in_daycare = false
       end
     end
   end

   puts "Done populating the db"
 end
end