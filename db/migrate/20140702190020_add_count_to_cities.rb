class AddCountToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :count, :integer

  end
end
