require 'spec_helper'

describe Band do
	before :each do 
		@valid_band_name = "Test Band"
		@valid_band_num_albums = 3
		@valid_band_lead_singer = "Test Singer"
		@band = Band.new(name: @valid_band_name, num_albums:  @valid_band_num_albums, lead_singer: @valid_band_lead_singer)
		@band_member = BandMember.new(name: "Test Name", age: 25)
		@band.band_members << @band_member
	end	

	describe "#name" do
		it "should return a valid band 'name'" do 
			@band.name.should eq(@valid_band_name)
		end
	end

	describe "#num_albums" do
		it "should return a valid band 'num_albums'" do 
			@band.num_albums.should eq(@valid_band_num_albums)
		end
	end

	describe "#name" do
		it "should return a valid band 'lead_singer'" do 
			@band.lead_singer.should eq(@valid_band_lead_singer)
		end
	end

	describe "#band_members" do 
		it "should return an array" do 
			@band.band_members.class.should eq(Array)
		end

		it "should return at least a BandMember object if its not empty" do 
			@band.band_members.first.class.should eq(BandMember)
		end
	end
		
end
