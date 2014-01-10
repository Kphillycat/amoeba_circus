class CreateTalents < ActiveRecord::Migration
  def up
  	create_table :talents do |t|
  		t.string :name
  		t.belongs_to :amoeba
  		t.timestamps
  	end
  end

  def down
  	drop_table :talents
  end
end
