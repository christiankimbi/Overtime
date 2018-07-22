
@user =  User.create(email: "chris@dren.co.za", password: "kringle1$", password_confirmation: "kringle1$", first_name: "Christian", last_name: "Kimbi")
puts "User created"
@admin_user =  AdminUser.create(email: "info@dren.co.za", password: "kringle1$", password_confirmation: "kringle1$", first_name: "Dren", last_name: "Solutions")
puts "Created Admin"

100.times do |post|
  Post.create(date: Date.today, rationale: "rationale content no:  #{post}", user_id:  @user.id)
end

puts "100 post have been created"