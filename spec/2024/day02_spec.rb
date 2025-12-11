require "spec_helper"
require_relative "./../../2024/day02/solution"

RSpec.describe Day2 do
  context "Part1" do
    it "returns the correct result" do
      expect(Day2.part1).to eq(356)
    end
  end
  context "Part2" do
    it "returns the correct result" do
      expect(Day2.part2).to eq(413)
    end
  end
end