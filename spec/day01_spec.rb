require "spec_helper"
require_relative("./../day04/part1")

RSpec.describe Day4Part1 do
  it "returns the correct result" do
    expect(Day4Part1.part1).to eq(13)
  end
end