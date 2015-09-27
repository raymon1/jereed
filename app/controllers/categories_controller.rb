class CategoriesController < ApplicationController
	# Photos will be arranged by categories
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])

	end



	def category_params
		params.require(:category).permit(# TODO: category attributes white list)
	end
end
	