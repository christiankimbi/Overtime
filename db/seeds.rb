100.times do |post|
  Post.create(date: Date.today, rationale: "rationale content no:  #{post}")
end

puts "100 post have been created"