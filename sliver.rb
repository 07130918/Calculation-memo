# a = '0123456789-'
# puts a.delete('^13-56-') #非破壊的
# puts a

# c = { 'A' => 'bb', 'C' => 'dd', 'E' => 'ff' }
# d = { 'A' => 'BB', 'C' => 'DD', 'e' => 'FF' }

# puts c.update(d)
# puts c.values_at("A")

# arr = (1..30).to_a
# container = []
# container2 = []

# arr.each_cons(7) do |i|
#   container << i
# end
# arr.each_slice(7) do |i|
#   container2 << i
# end

# p container.length
# p container2.length

# hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
# p hash.member?("apple")
# p hash.member?("grate")

# File.open('test.txt', 'a+') do |f|
#   f.write("recode 1\n")
#   f.seek(0, IO::SEEK_SET)
#   f.write("recode 2\n")
# end

# p ({ a: 100, b: 100 }).invert

# a = "Ruby"
# b = " on Rails"
# a.concat b #破壊的
# a.reverse #非破壊的
# p a
# p a.index("R", 1)

# File.open('test.txt', 'r') do |io|
#   puts io.gets
#   puts io.read
#   io.rewind
#   p lines = io.readlines
# end

# class Surface
#   attr_reader :s
#   def initialize(x, y)
#     @s = x * y
#   end
# end

# class Volume < Surface
#   attr_reader :v
#   def initialize(x, y, z)
#     super(x, y)
#     @v = x * y * z
#   end
# end

# a = Volume.new(2, 5, 5)
# puts "#{a.v},#{a.s}"

s = 'To be or not to be, that is the question.'
hash = Hash.new(0)
s.scan(/\w+/) { |i| hash[i] += 1 }
p hash['be'] #=>2

p 12_354.chr(Encoding::UTF_8)

ary = []
ary << 1 && false
true || ary << 2
false && ary << 3
false || ary << 4
p ary

p '--'

foo = [1, 2, 3]
bar = foo
baz = foo.dup

bar[3] = 4
p foo
p bar
p baz

puts "#{0x10}"

p [1, 2, 3, 4].map do |e|
   e * e
end

require 'date'
p Date.today.strftime("%F")

str = "1;2:3;4"
p str.split(/;|:/)

p "Hello%d" % 5

(1..10).to_a.each.
reverse_each.
each do |i|
  puts i
end