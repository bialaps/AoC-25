require "spec_helper"
require_relative "./../day05/solution"

RSpec.describe Day5 do
  context "Part1" do
    it "returns the correct result" do
      expect(Day5.part1).to eq(3)
    end
  end
end