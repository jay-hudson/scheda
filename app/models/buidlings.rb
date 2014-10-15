class Buildings < ActiveRecord:Base
    def Buildings.everything
        ActiveRecord:Base.connection.execute(<<-SQL
		SELECT array_to_json(array_agg(t)) AS buildings 
		FROM (SELECT name as building FROM buildings)t
		SQL
		)
    end  
end