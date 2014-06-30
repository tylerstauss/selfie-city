class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.string :url
  		t.float :latitude
  		t.float :longitude
  		t.belongs_to :city
  		t.string :instagram_id
  		t.text :instagram_text
  		
  		t.timestamps
  	end
  end
end
