a = '0123456789-'
puts a.delete('^13-56-')

c = { 'A' => 'bb', 'C' => 'dd', 'E' => 'ff' }
d = { 'A' => 'BB', 'C' => 'DD', 'E' => 'FF' }

puts c.update(d)

