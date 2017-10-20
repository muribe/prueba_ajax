# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |enter|
    e = Enterprise.create(name: "Empresa #{enter}",city: "Ciudad #{enter}", country: "País #{enter}", address: "Dirección #{enter}")
    20.times do |user|
      u = User.create(:email => "mail#{user}@gmail.com", :password => "12345678", :password_confirmation => "12345678") 
      20.times do |complaint|
          Complaint.create(content: "Lorem ipsum dolor sit amet",user_id: u.id, enterprise_id: e.id)
      end 
    end
end