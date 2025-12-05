require "spec_helper"
require_relative("./../day04/solution")

RSpec.describe Day4 do
  context "Part 01" do
    it "returns the correct result" do
      expect(Day4.part1).to eq(1602)
    end
  end
  context "Part 02" do
    it "returns the correct result" do
      expect(Day4.part2).to eq(9518)
    end
  end
end