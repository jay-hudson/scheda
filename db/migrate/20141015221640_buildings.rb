class Buildings < ActiveRecord::Migration
  def change
	execute <<-eos
	CREATE TABLE public.buildings
	(
	   building_id serial, 
	   name text, 
	   commencement_date date, 
	   address text, 
	   city text, 
	   state text, 
	   tax_421 boolean, 
	   CONSTRAINT building_prime PRIMARY KEY (building_id)
	) 
	eos
  end
end
