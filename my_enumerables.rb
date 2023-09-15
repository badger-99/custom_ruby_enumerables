module MyEnumerables
  def all?()
    result = true
    # result = false unless yield(item) = true
    each { |item| result = false unless yield(item) }
    result
  end

  def any?()
    result = false
    each { |item| result = true if yield (item) }
    result
  end

  def filter()
    result = []
    each { |item| result << item if yield(item) }
    result
  end

  def max
    result = -Float::INFINITY
    each { |item| result = item if item > result }
    result
  end

  def min
    result = Float::INFINITY
    each { |item| result = item if item < result }
    result
  end

  def sort
    result = []
    copy = clone # cloning whatever array will call this method
    while copy.length.positive?
      min_value = copy.min
      result << min_value
      copy.delete(min_value)
    end
    result
  end
end
