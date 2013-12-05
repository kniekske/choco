class ChocolatesController < ApplicationController

	respond_to :html

	def index
		@chocolates = Chocolate.all  
		respond_with @chocolates
	end

	def show
		@chocolate = Chocolate.find(params[:id])
		respond_with @chocolate
	end

	def new
		@chocolate = Chocolate.new
		respond_with @chocolate
	end

	def edit
		@chocolate = Chocolate.find(params[:id])
		respond_with @chocolate
	end

	def create
		@chocolate = Chocolate.new(permitted_params)
		@chocolate.save
		respond_with @chocolate
	end

	def update
		@chocolate = Chocolate.find(params[:id])
		@chocolate.update_attributes(permitted_params)
		respond_with @chocolate
	end

	def destroy
		@chocolate = Chocolate.find(params[:id])
		@chocolate.destroy
		respond_with @chocolate, location: chocolates_path 
	end

	def permitted_params
		params.require(:chocolate).permit(:name, :description, :brand, :cocoa_percentage)
	end


end