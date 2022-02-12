require 'rspec'
require_relative 'katas.rb'


kata = Maria.new  
describe 'Maria' do
  
  # 8,1 kata 
  describe "#divisible_by " do
    it "returns all numbers which are divisible " do    
      expect(kata.divisible_by([1,2,3,4,5,6], 2)).to eq [2,4,6]
    end
    it "returns all numbers which are divisible " do   
      expect(kata.divisible_by([0,1,2,3,4,5,6], 4)).to eq [0,4]
    end
  end

  # 8,2 kata 

  describe "#circle_area " do
    it "calculates the area of that circle " do   
      expect(kata.circle_area(Circle.new(Point.new(10, 10), 30)).round(6)).to eq(2827.433388)
    end
    it "calculates the area of that circle " do   
      expect(kata.circle_area(Circle.new(Point.new(25, -70), 30)).round(6)).to eq(2827.433388)
    end
  end

  # 7 kata 
  describe "#series_sum " do
    it "returns the sum of following series upto nth term(parameter)" do    
      expect(kata.series_sum(1)).to eq "1.00"
    end
    it "returns the sum of following series upto nth term(parameter)" do   
      expect(kata.series_sum(2)).to eq "1.25"
    end
  end

  # 6 kata 
  describe "#mant_exp" do
    it "floating-point system " do    
      expect(kata.mant_exp(0.06, 10)).to eq "6000000000P-11"
    end
    it "floating-point system" do    
      expect(kata.mant_exp(72.0, 12)).to eq "720000000000P-10"
    end
  end


  # 5kata
  describe "#closest" do
    it "return closest " do    
      expect(kata.closest("")).to eq []
    end
    it "return closest" do    
      expect(kata.closest("456899 50 11992 176 272293 163 389128 96 290193 85 52")).to eq [[13, 9, 85], [14, 3, 176]]
    end
  end
end

