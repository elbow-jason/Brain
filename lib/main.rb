
require_relative 'brain/brain'
require_relative 'neuron/neuron'


#neuron = Neuron.new(10,10,10, 6)
#neuron.grow_dendrite



brain = Brain.new(3, 3, 3)


brain.generate_addresses

brain.generate_neurons




#neuron_alpha_v_simple_grackle

#bundle: is 3D space 
	# => coordinates [x,y,z] are intergers
	# =>  
		

#neuron: has finite resources (100?)
# => can have up to 25 connections
# => does not "change" data; only changes time between data
# => each has 1 dendrite array variable

	#dendrite: array of arrays (2 deep)
 	# => "exists" in bundle (see #bundle) space
 	# => format: [[connection_number, x, y, z, distance]....n]
 	# => has finite number of connections
