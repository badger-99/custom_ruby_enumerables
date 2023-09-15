require_relative 'my_enumerables'

class MyList
  include MyEnumerables

  def initialize(*numbers)
    @list = numbers
  end

  def each
    @list.each { |number| yield (number) }
  end

  def length
    @list.length
  end

  def delete(value)
    @list.delete(value)
  end
end
