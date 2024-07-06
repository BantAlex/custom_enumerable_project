module Enumerable

  def my_each_with_index
    self.length.times do |i|
      yield(self[i],i)
    end
    self
  end

  def my_select
    result = []
    self.my_each do |elem|
      result.push(elem) if yield(elem)
      next
    end
    result
  end

end
class Array

  def my_each
    for elem in self
      yield(elem)
    end
  end

end
