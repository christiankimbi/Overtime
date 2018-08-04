FactoryBot.define do
  factory :audit_log do
    user
    status 0
    start_date (Date.today - 1.week).end_of_week(:sunday)
    end_date nil
  end
end
