require 'pry'

describe GridPoint do
  describe "#x" do
    context "GridPointのx座標が1のとき" do
      it "1を返す" do
        grid_point = GridPoint.new(1, 2)
        expect(grid_point.x).to eq(1)
      end
    end
  end

  describe "#y" do
    context "GridPointのy座標が1のとき" do
      it "1を返す" do
        grid_point = GridPoint.new(2, 1)
        expect(grid_point.y).to eq(1)
      end
    end
  end

  describe "#to_string" do
    context "GridPointのx座標が1、y座標が2のとき" do
      it "(1,2)を返す" do
        grid_point = GridPoint.new(1, 2)
        expect(grid_point.to_string).to eq("(1,2)")
      end
    end
  end
#  let(:sample){ Sample.new }
#
#  describe "#say" do
#    describe "Using expect to" do
#      let(:greeting){ "Hello" }
#
#      it "should say 'Hello TDD BootCamp!'" do
#        expect(sample.say(greeting)).to eq "Hello TDD BootCamp!"
#      end
#    end
#
#    describe "Using subject it should " do
#      subject { sample.say(greeting) }
#
#      let(:greeting){ "Yeah!" }
#      it { should eq "Yeah! TDD BootCamp!" }
#    end
#
#    describe "Using power assert " do
#      let(:greeting){ "Wow!" }
#
#      it do
#        is_asserted_by{ sample.say(greeting) == "Wow! TDD BootCamp!" }
#      end
#    end
#  end
end
