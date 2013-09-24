require 'spec_helper'

describe BandMember do
	before :each do
		@valid_band_member_name = "Test name"
		@valid_band_member_age = 25
		@band_member = BandMember.new(name: @valid_band_member_name, age: @valid_band_member_age)
		@band = Band.new(name: "Test band", num_albums: 3, lead_singer: "Test singer")
		@band.band_members << @band_member
	end	

	describe "#name" do
		it "should return a valid band_member 'name'" do
			@band_member.name.should eq(@valid_band_member_name)
		end
	end

		describe "#age" do
		it "should return a valid band_member 'age'" do
			@band_member.age.should eq(@valid_band_member_age)
		end
	end

end
