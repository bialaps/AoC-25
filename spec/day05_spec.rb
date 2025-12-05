require "spec_helper"
require_relative "./../day05/solution"

RSpec.describe Day5 do
  context "Part1" do
    it "returns the correct result" do
      expect(Day5.part1).to eq(701)
    end
  end

  context "Part2" do 
    it "returns the correct result" do
      expect(Day5.part2).to eq(352340558684863)
    end
  end
end