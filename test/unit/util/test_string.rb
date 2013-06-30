# encoding: utf-8

require "test_helper"

require "sup/util"

describe "Sup's String extension" do
  describe "#display_length" do
    let :data do
      [
        ['some words', 10,],
        ['中文', 4,],
        ['ä', 1,],
      ]
    end

    it "calculates display length of a string" do
      data.each do |(str, length)|
        str.display_length.must_equal length
      end
    end
  end

  describe "#slice_by_display_length(len)" do
    let :data do
      [
        ['some words', 6, 'some w'],
        ['中文', 2, '中'],
        ['älpha', 3, 'älp'],
      ]
    end

    it "slices string by display length" do
      data.each do |(str, length, sliced)|
        str.slice_by_display_length(length).must_equal sliced
      end
    end
  end
end