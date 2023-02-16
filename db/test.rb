months = ["test" ,"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov"]
(1..12).each do |i|
    Salary.create(
    salary: rand(1000..15000),
    month: months[i],
    bonus: rand(100..1000)
  )
end
