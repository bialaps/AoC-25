
require "spec_helper"
require_relative "./../day06/solution"

RSpec.describe Day6 do
  context "Part 01" do
    it "returns the correct result" do
      expect(Day6.part1).to eq(5784380717354)
    end
  end

  context "Part 02" do
    it "returns the correct result" do
      expect(Day6.part2).to eq(7996218225744)
    end
  end
end