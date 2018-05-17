class Sphere
	def initialize(r)
		@r = r
	end
	
	def area
		area = 4.0*(@r**2)*Math::PI
	end	
	
	def volume
		volume = 4.0*(@r**3)*Math::PI/3
	end
end #end of sphere class

class Ball < Sphere
	def initialize(r, color)
		super(r)
		@color = color	
	end

end #end of ball class

class MyBall < Ball
	def initialize(r, color, owner)
		super(r, color)
		@owner = owner
	end
	
	def show
		puts "Radius = #{@r}"
		puts "Color = #{@color}"
		puts "Owner = #{@owner}"
		puts "Area = #{self.area}"
		puts "Volume = #{self.volume}"
	end
end #end of myball class

myBall = MyBall.new(5, "blue", "John")
puts "myBall.show: "
myBall.show