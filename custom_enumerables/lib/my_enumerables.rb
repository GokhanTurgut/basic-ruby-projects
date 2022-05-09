# frozen_string_literal: true

module Enumerable
  def my_each_with_index
    for index in 0..length - 1
      yield(self[index], index)
    end
    self
  end

  def my_select
    selected = []
    for element in self
      selected.push(element) if yield(element)
    end
    selected
  end
end

class Array
  def my_each
    for element in self
      yield(element)
    end
    self
  end
end
