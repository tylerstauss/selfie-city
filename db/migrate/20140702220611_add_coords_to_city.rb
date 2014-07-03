class AddCoordsToCity < ActiveRecord::Migration
  def change
  	change_table :cities do |t|
  		t.float :latitude
  		t.float :longitude
  	end
  end
end
