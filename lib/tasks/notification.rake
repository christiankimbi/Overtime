namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do

    if Time.now.monday?
     employees = Employee.all
     notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week : https://overtimeapp1004.herokuapp.com"

     employees.each do |employee|
       AuditLog.create!(user_id: employee.id)
       SmsTool.send_sms(number: employee.phone, message: notification_message)
     end

      puts "Done processing"
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime request"
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2.  Check to see if there are any request
    # 3. Iterate of the list of admin users/manager
    # 4. Send email to all admins
    #
    submitted_posts = Post.submitted
    if submitted_posts.count > 0
      admin_users = AdminUser.all
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
        puts "Done for #{admin.full_name}"
      end
    end
  end
end
