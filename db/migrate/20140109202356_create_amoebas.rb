class CreateAmoebas < ActiveRecord::Migration
  def up
  	create_table :amoebas do |t|
	  t.belongs_to :act
      t.string :name
      t.integer :generation
      t.timestamps
    end
  end

  def down
  	drop_table :amoebas
  end
end
