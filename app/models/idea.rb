class Idea < ActiveRecord::Base

	belongs_to :stock
	belongs_to :user
	has_threaded_comments
	def px_tgt_range(price)
    output = Array.new
    i = 0
    j = -5
      for j in ( -5..5 )
      	if j < 0
        	output[i] = (price * (1 + (0.05*j) )).to_s + "  (#{(0.05*j).to_s}%)"
        elsif j > 0
        	output[i] = (price * (1 + (0.05*j) )).to_s + "  (+#{(0.05*j).to_s}%)"   
        else
          	output[i] = (price * (1 + (0.05*j) )).to_s + "  -----"      	
        	
        end	
        i+=1
      end
    return output
  end
  
end
