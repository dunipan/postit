class CategoriesController<ApplicationController
	before_action :require_user, only:[:new, :create]

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

		if @category.save 
			flash[:notice] = "Your category has been created"
			redirect_to categories_path
		else
			render :new
		end
		
	end

	def update
		@category = Category.find(params[:id])

		if @category.update(category_params)
			flash[:notice] = "Your category has been updated"
			redirect_to categories_path
		else
			render :edit
		end
	end

	def show
		@category = Category.find(params[:id])
	end

	def edit
		@category = Category.find(params[:id])
	end

	def destroy
		
	end

	private
	def category_params
		params.require(:category).permit!
	end


end