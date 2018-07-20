FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end


  factory :user do
    first_name "Chris"
    last_name  "Kimbi"
    email { generate :email}
    password "password123$"
    password_confirmation "password123$"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Jane"
    last_name  "Doe"
    email { generate :email}
    password "password123$"
    password_confirmation "password123$"
  end
end