require 'spec_helper'

describe "Austrian Mobile Numbers" do
  VALID_NUMBERS = %w(004369912233444 004367612233444)
  INVALID_NUMBERS = %w(004369112233444)


  VALID_NUMBERS.each do |number|
    it "#{number} should be valid" do
      number.is_austrian_mobile_number?.should be_true
    end
  end

  INVALID_NUMBERS.each do |number|
    it "#{number} should not be valid" do
      number.is_austrian_mobile_number?.should_not be_true
    end
  end
end