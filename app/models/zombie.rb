class Zombie < ActiveRecord::Base
	has_and_belongs_to_many :limbs

end
