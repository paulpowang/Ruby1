puts "loop:"
i = 4
loop do 
	
	if i == 0
		puts
		break
	else
		print "#{i*2} "
		i = i-1
	end
end

puts "while:"
i=4
while i > 0
	print "#{i*2} "
	i = i-1
end
puts

puts "until:"
i = 4
until i<1 do 
	print "#{i*2} "
	i = i-1
end
puts

puts "for: "
for i in (1..4) do
	print "#{i*2} "
end
puts

puts "upto:"
1.upto(4){|i| print "#{i*2} "}
puts

puts "downto:"
4.downto(1){|i| print "#{i*2} "}
puts

puts "times:"
4.times{print "Hello "}
puts

puts "each:"
arr1 = [1, 2, 3, 4]
arr1.each do |i|
	print "#{i*2} "
end
puts

puts "map:"
[1,2,3,4].map{|i| print "#{10.5/(i*2)} "}
puts

puts "step:"
0.step(3, 0.5) do |i|
	print "#{i} "
end
puts

puts "collect:"
[1,2,3,4].collect{|i| print "#{i} "}
puts

puts "select:"
print "#{(1..10).select{|i| i%2 ==0}} "
puts

puts "reject:"
print "#{(1..10).reject{|i| i%2 ==0}} "
puts
