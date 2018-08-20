namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. AdminUsers
    # 4. Send a message that has instructions and a link to log time
    #
   # User.all.each do |User|
   #   SmsTool.send_sms(message: )
    # end

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
        ManagerMailer.email(admin).deliver_later
        puts "Done for #{admin.full_name}"
      end
    end
  end
end
