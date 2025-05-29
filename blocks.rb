5.times {puts "Exec the block"}


sum = 0
numbers = [5,10,5]
numbers.each { |number| sum +=  number }
puts sum


foo = {2 => 3, 4=>5}

foo.each do |key,value|
  puts "key #{key}"
  puts "value #{value}"
end

def foo
  yield
  yield
end

foo { puts "Exec the block" }