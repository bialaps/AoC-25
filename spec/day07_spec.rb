require "spec_helper"
require_relative "./../day07/solution.rb"

RSpec.describe Day7 do
  context "Part 01" do
    it "returns the correct result" do
      expect(Day7.part1).to eq(1499)
    end
  end
  context "Part 02" do
    it "returns the correct result" do
      expect(Day7.part2).to eq(40)
    end
  end
end