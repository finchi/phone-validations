require 'spec_helper'

describe "Austrian Mobile Numbers" do
  VALID_NUMBERS   = [
          '00436501234567',
          '00436601234567',
          '00436641234567',
          '00436761234567',
          '00436801234567',
          '00436811234567',
          '00436991234567'
  ]
  INVALID_NUMBERS = [
          '00436101234567',
          '00436101234567',
          '00436141234567',
          '00436161234567',
          '00436101234567',
          '00436111234567',
          '00436191234567'
  ]

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