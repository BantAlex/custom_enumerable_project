module Enumerable

  def my_each_with_index
    self.length.times do |i|
      yield(self[i],i)
    end
    return self
  end

end
class Array

  def my_each
    for elem in self
      yield(elem)
    end
  end

end
