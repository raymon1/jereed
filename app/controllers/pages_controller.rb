class PagesController < ApplicationController
	# The pages controller will render pages
	def home
		@categories = Category.all
	end


	def about_us

	end

	def contact_us

	end

	

end
