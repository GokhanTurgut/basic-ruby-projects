# @param numbers [Array<number>] number array to be sorted
# @return [Array<number>] sorted array
def bubble_sort(numbers)
  numbers_length = numbers.length - 1
  no_swap = true
  for i in 0..numbers_length do
    for j in 0..numbers_length - i - 1 do
      next unless numbers[j] > numbers[j + 1]

      temp = numbers[j]
      numbers[j] = numbers[j + 1]
      numbers[j + 1] = temp
      no_swap = false
    end
    break if no_swap
  end
  numbers
end

p bubble_sort([2, 5, 3, 1, 7, 9, 14, 6, 4])
p bubble_sort([4, 3, 78, 2, 0, 2])
