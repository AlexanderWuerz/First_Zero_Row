# Alexander Wuerz 
# firstZeroRow.rb
#	Outputs the index of the first row in a 2D 
# array that contains all zeros. 

# Using SUM 
def getZeroRow(x)
	x.each_with_index do |row, index|
		if row.sum == 0
			print ("First all-zero row in \n"+
				x.to_s+"\n is at index: "+ index.to_s+"\n")
			break
		end	
	end 
end 

# Using FIND 
def getZeroFind(x)
	x.each_with_index do |row, index|
		if row.find { |i| i !=0 }
		else
			print ("First all-zero row in \n"+
				x.to_s+"\n is at index: "+ index.to_s+"\n")
			break
		end
	end 
end 
	
arry = [[1,2,3],[4,5,6],[7,8,9]]
arry1 = [[0,1,0],[0,0,0],[0,0,0]]

puts ("Using SUM to get the index ... ")
getZeroRow(arry)
getZeroRow(arry1)

puts ("Using FIND to get the index ... ")
getZeroFind(arry)
getZeroFind(arry1)
