class Stock < ActiveRecord::Base

	@@service_uri = "http://download.finance.yahoo.com/d/quotes.csv"
	@@hservice_uri = "http://ichart.finance.yahoo.com/table.csv"
	
	has_many :ideas

def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['ticker LIKE ?', search_condition])
end

	def pull(args)
	output = Array.new
	i = 0
	String.new(send_request(args)).each do |line|
	  a = line.chomp.split(",")
	  output << { :symbol => args[i], 
				  :price => a[0].to_f,
				  :change => a[1].to_f, 
				  :volume => a[2].to_i
				}
	  i += 1
	end
	return output
  end

  def send_request(args)
	completed_path = @@service_uri + construct_args(args.join(","))
	uri = URI.parse(completed_path)
	response = Net::HTTP.start(uri.host, uri.port) do |http|
	  http.get completed_path
	end
	return response.body
  end

  def construct_args(args)
	path = "?f=l1c1v&s=" + args.map{|x| CGI.escape(x)}.join(",")
  end

  def self.pullinfo(args)
          a = []
          a << args
          x = Stock.new
          b = x.pull(a)
          y = b.find_all { |v| v[:symbol] == args }
          x = {}
          x = y[0]
          return x
  end
      
######################################

	def hpull(*args)
		a = String.new(hsend_request(*args))
		a = a.split(",").collect{|s| s.to_s }
		return a
	end 

	def hsend_request(*args)
		completed_path = @@hservice_uri + hconstruct_args(*args)
		uri = URI.parse(completed_path)
		response = Net::HTTP.start(uri.host, uri.port) do |http|
			http.get completed_path
		end
		return response.body
	end

	def hconstruct_args(*args)
		path = "?s=" + args.map{|x| CGI.escape(x)}.join(",") + "&a=02&b=13&c=1986&d=02&e=13&f=1986&g=d&ignore=.csv"
	end

end






  #http://ichart.finance.yahoo.com/table.csv?s=MSFT&a=02&b=13&c=1986&d=02&e=13&f=1986&g=d&ignore=.csv


