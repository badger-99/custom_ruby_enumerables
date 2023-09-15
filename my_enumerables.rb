module MyEnumerables
  def all?()
    each { |item| return false unless yield(item) }
  end

  def any?()
    each { |item| return true if yield (item) }
  end

  def filter()
    result = []
    each { |item| result << item if yield(item) }
    result
  end
end
