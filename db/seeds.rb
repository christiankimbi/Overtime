
@user =  User.create(email: "chris@dren.co.za",
                     password: "kringle1$",
                     password_confirmation: "kringle1$",
                     first_name: "Christian",
                     last_name: "Kimbi",
                     phone: "+27764146411")

puts "User created"

@admin_user =  AdminUser.create(email: "info@dren.co.za",
                                password: "kringle1$",
                                password_confirmation: "kringle1$",
                                first_name: "Dren",
                                last_name: "Solutions",
                                phone: "+27764146411")
puts "Created Admin"

100.times do |post|
  Post.create(date: Date.today, rationale: "rationale content no:  #{post}", user_id:  @user.id, overtime_request: 2.5)
end

puts "100 post have been created"

100.times do |audit_log|
  AuditLog.create(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit logs created"