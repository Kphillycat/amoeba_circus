class CreateActs < ActiveRecord::Migration
  def up
  	create_table :acts do |t|
  		t.string :name
  		t.datetime :datetime
  		t.timestamps
  	end
  end

  def down
  	drop_table :acts
  end
end
