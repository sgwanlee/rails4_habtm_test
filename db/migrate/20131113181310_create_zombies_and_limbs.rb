class CreateZombiesAndLimbs < ActiveRecord::Migration
  def change
  	create_table :zombies do |t|
  		t.string :name
  		t.timestamps
  	end

  	create_table :limbs do |t|
  		t.string :kind
  		t.timestamps
  	end
  	
		create_join_table :zombies, :limbs
  end
end
