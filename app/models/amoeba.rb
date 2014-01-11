class Amoeba < ActiveRecord::Base
	has_one :talent
	belongs_to :act

	def split(name_1, name_2)
		amoeba_spawn_1 = Amoeba.create(:generation => 2, :name => name_1, :talent_id => self.talent_id)
		amoeba_spawn_2 = Amoeba.create(:generation => 2, :name => name_2, :talent_id => self.talent_id)
		self.destroy
		[amoeba_spawn_1, amoeba_spawn_2]
	end
end