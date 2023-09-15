require_relative 'my_list'

# Create our list
list = MyList.new(1, 4, 3, 2)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false

# Test #any?
puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false

# Test #filter
puts 'Filtered Array'
puts(list.filter(&:even?))
# => [2, 4]

puts "Maimum value #{list.max}"
# => 4

puts "Minimum value #{list.min}"
# => 1

puts 'Sorted Array'
puts(list.sort)
# => [1, 2, 3, 4]
