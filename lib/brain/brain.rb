class Brain
	def initialize(size, in_size = 10, out_size = 10)
		
		#establish variables
		@size = size
		@in_size = in_size 
		@out_size = out_size
		
		#calc 3D dimensional limit for brain
		@dimension = (@size**(1/3.0)).to_i
		puts "dimension:  #{@dimension}"
	end
end
