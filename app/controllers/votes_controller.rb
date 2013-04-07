class VotesController < ApplicationController

	def create
		@item = Item.find(params[:id])
		current_user.vote_for(@item)
		User.share_odd(current_user.id, item_url(@item))
		redirect_to(items_url)
	end
end
