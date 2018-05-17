class Triangle
	def initialize (a, b, c)
		@a, @b, @c = a, b, c 
	end
	
	def test		
		#not a triangle, one side > sum of the other two
		if (@a > (@b+@c))||(@b > (@a+@c))||(@c > (@b+@a)) then
			puts "It is not a triangle"		
		#equilateral, three sides are equal
		elsif (@a == @b) && (@b == @c) then
			puts "It is a equailateral triangle"		
		#isosceles, two sides are the same
		elsif (@a == @b)||(@a == @c)||(@c == @b) then
			#right and isosceles
			if (@a**2 + @b**2 == @c**2)||
			   (@a**2 + @c**2 == @b**2)||
			   (@c**2 + @b**2 == @a**2) then
			puts "It is a right and isosceles triangle"
			else
			puts "It is a isosceles triangle"
			end		
		#scalene
		else
			#right and scalene
			if (@a**2 + @b**2 == @c**2)||
			   (@a**2 + @c**2 == @b**2)||
			   (@c**2 + @b**2 == @a**2) then
			puts "It is a right and scalene triangle"
			else
			puts "It is a scalene triangle"
			end
		end	
	end #end of test	
	
	def perimeter
		#invalid 
		if (@a > (@b+@c))||(@b > (@a+@c))||(@c > (@b+@a)) then
			"It is not a triangle"		
		#valid
		else
			perimeter = @a+@b+@c
		end
	end #end of perimeter
	
	def area
		#invalid
		if (@a > (@b+@c))||(@b > (@a+@c))||(@c > (@b+@a)) then
			"It is not a triangle"
		
		#valid
		else
			s = self.perimeter * 0.5
			area = Math.sqrt(s*(s-@a)*(s-@b)*(s-@c))
		end
	end #end of area	
end #end of class


triangle1 = Triangle.new(1,1,5)
p triangle1
triangle1.test
puts "Perimeter: #{triangle1.perimeter}"
puts "Area: #{triangle1.area}"; puts

triangle2 = Triangle.new(3,3,3)
p triangle2
triangle2.test
puts "Perimeter: #{triangle2.perimeter}"
puts "Area: #{triangle2.area}"; puts


triangle3 = Triangle.new(1,2,3)
p triangle3
triangle3.test
puts "Perimeter: #{triangle3.perimeter}"
puts "Area: #{triangle3.area}"; puts

triangle4 = Triangle.new(3,4,5)
p triangle4
triangle4.test
puts "Perimeter: #{triangle4.perimeter}"
puts "Area: #{triangle4.area}"; puts

triangle5 = Triangle.new(3,3,5)
p triangle5
triangle5.test
puts "Perimeter: #{triangle5.perimeter}"
puts "Area: #{triangle5.area}"; puts



