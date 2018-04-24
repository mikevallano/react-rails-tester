50.times do |i|
  crit_type = %w(dog cat).sample
  name = crit_type == 'cat' ? Faker::Cat.name : Faker::Dog.name
  age = rand(1..15)
  crit = Critter.create(name: name, age: age, crit_type: crit_type)
  puts "created crit: name: #{crit.name}, age: #{crit.age}, crit_type: #{crit.crit_type}"
end
