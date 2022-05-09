# frozen_string_literal: true

module Enumerable
  def my_each_with_index
    for index in 0..size - 1
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

  def my_all?
    for element in self
      return false unless yield(element)
    end
    true
  end

  def my_none?
    for element in self
      return false if yield(element)
    end
    true
  end

  def my_count
    return size unless block_given?

    counter = 0
    for element in self
      counter += 1 if yield(element)
    end
    counter
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
