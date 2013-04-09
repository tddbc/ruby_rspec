# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Sample do

  describe "#say" do
    it "should return 'Hello TDD BootCamp!'" do
      sut = Sample.new
      sut.say.should == "Hello TDD BootCamp!"
    end
  end

end
