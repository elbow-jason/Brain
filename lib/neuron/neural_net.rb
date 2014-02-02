class Neural_net
	@@number_of_neurons

	def initialize(x,y,z, delay = rand(6)) 
		@location = [x,y,z] 
		@delay = delay
	end

	def sqrt_to_200(a, b)
		sum = a + b
		
		if sum == 0
			return 0
		elsif sum < 4
			return 1
		elsif sum < 9
			return 2
		elsif sum < 16
			return 3
		elsif sum < 25
			return 4
		elsif sum < 36
			return 5
		elsif sum < 49
			return 6
		elsif sum < 64
			return 7
		elsif sum < 81
			return 8
		elsif sum < 100
			return 9
		elsif sum < 121
			return 10
		elsif sum < 144
			return 11
		elsif sum < 169
			return 12
		elsif sum < 196
			return 13
		else return 14
		end
	end
	

	def establish
		@@neuron_hash = {@location.join("_").to_sym => [@delay, [@dendrites]]}
		require 'pry'; binding.pry
		@@dendrites_hash = {@location.join("_") + }
	end

	def connect # generate an address of a random coordinate within 10 units on each axis and 
		
		dendrite = []
		@location.each {|pt| [true,false].sample ? dendrite << pt+rand(10) : dendrite << pt-rand(10)}
		dendrite << @location.zip(dendrite).map { |x, y| (y - x) ** 2 }
		dendrite[3][0] = sqrt_to_200(dendrite[3][0],dendrite[3][1])
		dendrite[3][0] = sqrt_to_200(dendrite[3][0],dendrite[3][2])
		dendrite[3] = dendrite[3][0]

		# It is computationally faster to build a decision tree for converting 'sum'
		# to an integer than to find sqrt of 'sum' (see method 'sqrt_to_100')

		print dendrite, "\n"

		return dendrite
	end
end


