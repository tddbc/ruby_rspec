# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Sample do
  let(:sample){ Sample.new }

  describe "#say" do
    subject { sample.say(greeting) }
    let(:greeting){ "Hello" }
    it { should eq "Hello TDD BootCamp!" }
  end
end
