class Array
	def limited?(amin, amax)
		i , count = 0, 0
		until i>= self.length do 
			if self[i] <= amax then
				if self[i] >= amin then
					count = count +1
					if count == self.length then
						print "true"
						return
					end
				end
			end
			i = i+1
		end
		print "false"
	end #end of limited?
	
	def sorted?(arr)
		# counter for increase and decrease
		countIn, countDe = 0, 0
		0.upto(arr.length-2) do |i|
			#case for increasing sequence
			if (arr[i]<= arr[i+1]) then
				countIn = countIn +1
				if countIn == (arr.length-1) then
					p "+1"
					return
				end
			end
			#case for decreasing sequence
			if (arr[i] >= arr[i+1]) then
				countDe = countDe + 1
				if countDe == (arr.length-1) then
					p "-1"
					return
				end
			end
		end
		p "0"
	end#end of sorted?				
		
end #end of class



arr1 = [1,2,3,4] # increasing
arr2 = [10,7,5,2] # decreasing
arr3 = [2,7,3,4] # not in order

p arr1
print "Is limited between 0 to 7? "
arr1.limited?(0,7); puts
print "Is sorted? "
arr1.sorted?(arr1); puts


p arr2
print "Is limited between 0 to 7? "
arr2.limited?(0,7); puts
print "Is sorted? "
arr2.sorted?(arr2); puts


p arr3
print "Is limited between 0 to 7? "
arr3.limited?(0,7); puts
print "Is sorted? "
arr3.sorted?(arr3); puts


