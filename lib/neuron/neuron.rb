class Neuron
	@@number_of_neurons = 0
	
	
	def initialize(x,y,z) 

		@@number_of_neurons += 1
		@neuron = {}
		@dendrites = {}

		location = [x,y,z] 
		address = "neuron_" + location.join("_").to_s
		delay = rand(6)


		#add attributes to neuron_dict
		@neuron[:location] = location
		@neuron[:address] = address
		@neuron[:delay] = delay
		print @neuron[:address], " is generated at ", @neuron[:location], " with delay of ", @neuron[:delay], " turns.\n"

		#grow 10 dendrites during initialization
		counter = 0
		10.times do 
			@dendrites[counter] = grow_dendrite()
			print @dendrites[counter], " "
		end

		print "\n"


	


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
	
	def number_of_neurons
		return @@number_of_neurons
	end


	def grow_dendrite # generate an address of a random coordinate within 10 units on each axis 
					  # and return array of [x, y, z, distance]
		
		dendrite = []
		#random x,y,z that is +/-10 from neuron 
		@neuron[:location].each {|pt| [true,false].sample ? dendrite << pt+rand(10) : dendrite << pt-rand(10)} 
		#calc sqaures of distance between neuron [x,y,z] and dendrite [j,k,i] points 
		#zipped array becomes [ [x,j], [y,k], [z,i] ] format
		dendrite << @neuron[:location].zip(dendrite).map { |x, j| (j - x) ** 2 } 
		#PYTHAGOREAAAAAAAAAN!!!!!!!
		dendrite[3][0] = sqrt_to_200(dendrite[3][0],dendrite[3][1])
		dendrite[3][0] = sqrt_to_200(dendrite[3][0],dendrite[3][2])
		dendrite[3] = dendrite[3][0]
		# It is computationally faster to build a decision tree for converting 'sum'
		# to an integer than to find sqrt of 'sum' (see method 'sqrt_to_100')

		#last attribute of dendrite is it's strength. strength decreases over time. increases with use.
		dendrite << 10
		return dendrite
	end
end