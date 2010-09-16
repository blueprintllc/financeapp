module StocksHelper

	def commify(number)    
		c = { :value => "", :length => 0 }
		r = number.to_s.reverse.split("").inject(c) do |t, e|  
			iv, il = t[:value], t[:length]
			iv += ',' if il % 3 == 0 && il != 0    
			{ :value => iv + e, :length => il + 1 }
		end
		r[:value].reverse!
	end 




end
