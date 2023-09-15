require_relative 'my_enumerables'

class MyList
  include MyEnumerables

  def initialize(*numbers)
    @list = numbers
  end

  def my_each(&block)
    @list.each {|number| yield(number)}
  end
end
