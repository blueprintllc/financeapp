class PublicController < ApplicationController
layout 'application'	
	def index
		@stocks=Stock.find(:all)
	end
end
