@admin_user =  AdminUser.create(email: "info@dren.co.za",
                                password: "kringle1$",
                                password_confirmation: "kringle1$",
                                first_name: "Dren",
                                last_name: "Solutions",
                                phone: "+27764146411")
puts "1 admin created"

@employee =  Employee.create(email: "chris@dren.co.za",
                     password: "kringle1$",
                     password_confirmation: "kringle1$",
                     first_name: "Christian",
                     last_name: "Kimbi",
                     phone: "+27764146411")

puts "1 employee created"


AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit logs created"

100.times do |post|
  Post.create(date: Date.today, rationale: "rationale content no:  #{post}", user_id:  @employee.id, overtime_request: 2.5)
end

puts "100 post have been created"
