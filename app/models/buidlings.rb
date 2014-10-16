class Buildings < ActiveRecord:Base
    def self.stuff
        self.res = ActiveRecord::Base.connection.execute(<<-SQL
		SELECT array_to_json(array_agg(t)) AS buildings 
		FROM (SELECT name as building FROM buildings)t
		SQL
		)
		self.res.getvalue(0,0)
    end  
end