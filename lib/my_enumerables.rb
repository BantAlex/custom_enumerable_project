module Enumerable

  def my_each_with_index
    self.length.times {|i| yield(self[i],i)}
    self
  end

  def my_select
    result = []
    self.my_each {|elem| result << elem if yield(elem)}
    result
  end

  def my_all?
    self.my_each {|elem| return false if !yield(elem)}
    true
  end

  def my_any?
    self.my_each {|elem| return true if yield(elem)}
    false
  end

  def my_none?
    self.my_each {|elem| return false if yield(elem)}
    true
  end

end
class Array

  def my_each
    for elem in self
      yield(elem)
    end
  end

end
