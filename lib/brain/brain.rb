class Brain
	def initialize(x_limit=100, y_limit=100, z_limit=100, in_size=10, out_size=10)
		
		#establish instance variables
		@address_array = []
		@neuron_address_sym = []
		@in_size = in_size 
		@out_size = out_size
		@x_limit = x_limit
		@y_limit = y_limit
		@z_limit = z_limit

		#calc 3D dimensional limit for brain
		print "x_limit: ", x_limit, " | y_limit : ", y_limit, " | z_limit: ", z_limit, "\n"
    total_neurons = number_of_neurons(x_limit,y_limit,z_limit)
		print "Total neurons : ", total_neurons, "\n"
	end

	def number_of_neurons(x,y,z)
		return x*y*z
	end

	

	def generate_addresses() # returns one address in [x,y,z] format
		print "Generating Addresses and Address Symbols..."
		n_count = 0
		for x in 0..@x_limit-1 do
			for y in 0..@y_limit-1 do
				for z in 0..@z_limit-1 do
					@address_array << [x, y, z]
					n_count += 1
				end
			end
		end
		puts "...done"
		print "Addresses Generated = ", n_count, "\n"
	end

	def generate_neurons()
		@address_array.each { |ele| Neuron.new( ele[0].to_i, ele[1].to_i, ele[2].to_i) }
	end


	def make_neurons
	end
end

