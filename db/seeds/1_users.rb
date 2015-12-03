18000.times do
  User.create age: rand(100), name2: "name#{rand(100)}"
end
