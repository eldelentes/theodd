class VotesController < ApplicationController
	def create
		@item = Item.find(params[:id])
		current_user.vote_for(@item)
		redirect_to(items_path)
	end
end
