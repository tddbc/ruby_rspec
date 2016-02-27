require 'pry'

describe GridPoint do
  let(:grid_point) { GridPoint.new(1, 2) }

  describe "#x" do
    context "GridPointのx座標が1のとき" do
      it "1を返す" do
        expect(grid_point.x).to eq(1)
      end
    end
  end

  describe "#y" do
    context "GridPointのy座標が2のとき" do
      it "2を返す" do
        expect(grid_point.y).to eq(2)
      end
    end
  end

  describe "#to_string" do
    context "GridPointのx座標が1、y座標が2のとき" do
      it "(1,2)を返す" do
        expect(grid_point.to_string).to eq("(1,2)")
      end
    end
  end

  describe "#same_pos?" do
    context "引数で渡されたオブジェクトの格子点が同じとき" do
      it "trueを返す" do
        grid_point_2 = grid_point.dup
        expect(grid_point.same_pos?(grid_point_2)).to be true
      end
    end

    context "引数で渡されたオブジェクトの格子点が違うとき" do
      it "trueを返す" do
        grid_point_2 = GridPoint.new(2, 2)
        expect(grid_point.same_pos?(grid_point_2)).to be false
      end
    end
  end
end
