arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

result = arr.sort_by do |element|
  element.select {|num| num.odd?}
end

p result
