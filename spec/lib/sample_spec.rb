# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Sample do
  subject { Sample.new }
  its(:greeting) { should eq "Hello TDD BootCamp!" }
end
