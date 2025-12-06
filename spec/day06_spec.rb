
require "spec_helper"
require_relative "./../day06/solution"

RSpec.describe Day6 do
  context "Part 01" do
    it "returns the correct result" do
      expect(Day6.part1).to eq(5784380717354)
    end
  end
end