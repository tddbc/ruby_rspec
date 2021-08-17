describe "整数閉区間を示す ClosedRange クラス" do
  describe "インスタンスは下端点と上端点を持つ" do
    describe "#lower_endpint 下端点を返す" do
      where(:case_name, :lower_endpoint, :upper_endpoint, :expected) do
        [
          ["正の整数の閉区間 [3, 7]", 3, 7, 3],
          ["負の整数の閉区間 [-7, -3]", -7, -3, -7],
          ["混合の整数の閉区間 [-3, 7]", -3, 7, -3],
        ]
      end

      with_them do
        let!(:range) { ClosedRange.new(lower_endpoint, upper_endpoint) }

        it do
          expect(range.lower_endpoint).to eq expected
        end
      end
    end

    describe "#upper_endpoint 上端点を返す" do
      where(:case_name, :lower_endpoint, :upper_endpoint, :expected) do
        [
          ["正の整数の閉区間 [3, 7]", 3, 7, 7],
          ["負の整数の閉区間 [-7, -3]", -7, -3, -3],
          ["混合の整数の閉区間 [-3, 7]", -3, 7, 7],
        ]
      end

      with_them do
        let!(:range) { ClosedRange.new(lower_endpoint, upper_endpoint) }

        it do
          expect(range.upper_endpoint).to eq expected
        end
      end
    end
  end

  describe "#to_s 整数閉区間の文字列表記を返す" do
    where(:case_name, :lower_endpoint, :upper_endpoint, :expected) do
      [
        ["正の整数の閉区間 [3, 7]", 3, 7, "[3,7]"],
        ["負の整数の閉区間 [-7, -3]", -7, -3, "[-7,-3]"],
        ["混合の整数の閉区間 [-3, 7]", -3, 7, "[-3,7]"],
      ]
    end

    with_them do
      let!(:range) { ClosedRange.new(lower_endpoint, upper_endpoint) }

      it do
        expect(range.to_s).to eq expected
      end
    end
  end

  describe "#includes? 指定した整数が閉区間内に含まれるか判定する" do
    where(:case_name, :lower_endpoint, :upper_endpoint, :target_integer, :expected) do
      [
        ["含む場合-下端点と同値 閉区間[3, 7]", 3, 7, 3, true],
        ["含む場合-上端点と同値 閉区間[3, 7]", 3, 7, 7, true],
        ["含まない場合-下端点より1だけ低い値 閉区間[3, 7]", 3, 7, 2, false],
        ["含まない場合-上端点より1だけ高い値 閉区間[3, 7]", 3, 7, 8, false],
        ["含む場合-負の整数の閉区間 [-7, -3]", -7, -3, -7, true],
        ["含む場合-混合の整数の閉区間 [-3, 7]", -3, 7, -3, true],
        ["含む場合-下端点・上端点・指定整数が全て同値 閉区間[3, 3]", 3, 3, 3, true],
      ]
    end

    with_them do
      let!(:range) { ClosedRange.new(lower_endpoint, upper_endpoint) }

      it do
        expect(range.includes?(target_integer)).to be expected
      end
    end
  end
end
