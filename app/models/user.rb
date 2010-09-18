class User < ActiveRecord::Base

	has_many :ideas
    acts_as_authentic do |c|
      c.login_field = :login # for available options see documentation in: Authlogic::ActsAsAuthentic
    end 
    	
end
