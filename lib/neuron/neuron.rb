class Neuron
	@@number_of_neurons = 0
	
	
	def initialize(x,y,z) 
		@@number_of_neurons += 1
		
		@dendrites          = {}
		location  = [x,y,z] 
		accession = "neuron_" + location.join("_").to_s
		delay     = rand(7)

    @neuron             = {}
		@neuron[:location]  = location
		@neuron[:address]   = address
		@neuron[:delay]     = delay
		print @neuron[:address], " is generated at ", @neuron[:location], " with delay of ", @neuron[:delay], " turns.\n"

		#grow 10 dendrites during initialization
		counter = 0
		10.times do 
			@dendrites[counter] = grow_dendrite()
			print @dendrites[counter], " "
		end
		print "\n"
	end

	def count_down(delay)
		return delay - 1
	end

	def number_of_neurons
		return @@number_of_neurons
	end

  def sqrt_to_200(point1, point2)


	def grow_dendrite # generate an address of a random coordinate within 10 units on each axis 
					  # and return array of [x, y, z, distance]
		dendrite = [] 
		@neuron[:location].each {|point| [true,false].sample ? dendrite << point+rand(10) : dendrite << point-rand(10)} 
		#calc squares of distance between neuron [x,y,z] and dendrite [j,k,i] points 
		#zipped array becomes [ [x,j], [y,k], [z,i] ] format
		dendrite << @neuron[:location].zip(dendrite).map { |x, j| (j - x) ** 2 } 
		#PYTHAGOREAAAAAAAAAN!!!!!!!
    binding.pry
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