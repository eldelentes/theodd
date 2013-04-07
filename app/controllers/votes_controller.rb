class VotesController < ApplicationController
	def create
		@item = Item.find(params[:id])
		current_user.vote_for(@item)
		User.delay.share_odd(current_user.id, item_url(@item))
		respond_to do |format|
    		format.html { redirect_to(items_url) }
    	format.js
  		end
	end
end
