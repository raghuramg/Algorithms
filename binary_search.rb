Array.class_eval do
  def binary_search(element)
    search_element(element, 0, self.length-1)
  end
  
  def search_element(element, from, to)
    mid = (from + to)/2
    return nil if from == mid
    
    if element > self[mid]
      search_element(element, mid, to)
    elsif element < self[mid]
      search_element(element, from, mid)
    else
      return mid
    end
  end
end

arr = [2, 6, 9, 12, 13, 19, 25, 37, 42, 56, 68, 72, 77, 83, 86]

puts "Input array: #{arr.inspect}"
puts "please enter element you want to search:"

element = gets.chomp.to_i
index =  arr.binary_search(element)

if index.nil?
  puts "Element not found!!"
else
  puts "Index of the element is: #{index}"
end


