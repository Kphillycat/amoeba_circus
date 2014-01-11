class CreateAmoebas < ActiveRecord::Migration
  def up
  	create_table :amoebas do |t|
	    t.integer :act_id
      t.integer :talent_id
      t.string :name
      t.integer :generation
      t.timestamps
    end
  end

  def down
  	drop_table :amoebas
  end
end
