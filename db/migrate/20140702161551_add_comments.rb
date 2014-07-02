class AddComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :name
  		t.text :content
  		t.belongs_to :photo
  		t.timestamps
  	end
  end
end
