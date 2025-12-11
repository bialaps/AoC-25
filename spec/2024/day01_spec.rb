require "spec_helper"
require_relative "./../../2024/day01/solution"

RSpec.describe Day1 do
  context "Part 1" do
    it "returns the correct result" do
      expect(Day1.part1).to eq(2580760)
    end
  end
  context "Part 2" do
    it "returns the correct result" do
      expect(Day1.part2).to eq(25358365)
    end
  end
end