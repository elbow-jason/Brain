
require_relative 'brain/brain'
require_relative 'neuron/neural_net'


neuron = Neural_net.new(10,10,10, 6)
neuron.connect
neuron.establish

brain = Brain.new(1000000)

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
