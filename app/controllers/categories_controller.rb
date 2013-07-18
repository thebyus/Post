class CategoriesController <ApplicationController
	before_action :require_user

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params.require(:category).permit(:name))
		if @category.save
			redirect_to root_path, notice: "New category was successfully created!"
		else
			render :new
		end
	end

end	