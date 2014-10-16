class BuildingsController < ApplicationController
	def show
		res = ActiveRecord::Base.connection.execute(<<-SQL
		SELECT array_to_json(array_agg(t)) AS buildings 
		FROM (SELECT building_id,name as building FROM buildings)t
		SQL
		)
		render body: res.getvalue(0,0)
	end
end