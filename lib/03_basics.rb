
def who_is_bigger(*numbers)
  detect = 0
  # retourner nil detected s'il y a un "nil"
  numbers.each {|a| if a == nil then detect = detect+1 end }
  # la methode compact enlève tous les nil de l'array
  max = numbers.compact.max

  if detect > 0 then
  return "nil detected"
  else
  return "#{max} is bigger"
  end

  puts detect
end


p who_is_bigger(98, 120, 22,33,55,78,100)


def reverse_upcase_noLTA(string)
  result = string.reverse.upcase.gsub(/L|T|A/,"")
end

puts reverse_upcase_noLTA("Tomahawk")

def array_42(array)
  array.include?(42)
end

p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])
p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42])

def magic_array(array)
  array.flatten.sort.map{ |e| e *2}.reject{|x| x%3 == 0}.uniq.sort
end

print magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])
# describe 'crazy stuff on arrays' do
#   # The magic_array function takes an array of number or an array of
#   # array of number as parameter and return the same array :
#   # - flattened (i.e. no more arrays in array)
#   # - sorted
#   # - with each number multiplicated by 2
#   # - with each multiple of 3 removed
#   # - with each number duplicate removed (any number should appear only once)
#   # - sorted
#   # BONUS : You can do this in one line less than 55 chars
#   it 'does crazy stuff on Arrays' do
#     expect(magic_array([1, 2, 3, 4, 5, 6]))
#       .to eq([2, 4, 8, 10])
#     expect(magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]]))
#       .to eq([2, 4, 8, 10, 46, 62])
#     expect(magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8]))
#       .to eq([2, 4, 14, 16, 64])
#   end
# end
