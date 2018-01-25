class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.destroy(params[:id])

		flash.notice = "Tag deleted!"

		redirect_to action: :index
	end
end
