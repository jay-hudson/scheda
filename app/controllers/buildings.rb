class BuildingsController < ApplicationController
	def show
		render :body @Buildings.everthing
	end
end