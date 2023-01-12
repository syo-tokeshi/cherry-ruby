# require 'minitest/autorun'
require_relative './gate'
require_relative './cicket'
require_relative './human'
require 'minitest/autorun'

# 手続き的に書いた、最初のコード
# toke = Human.new("toke")
# to_tomi = Cicket.new(160,"tomi")
# to_gate = Gate.new("tomi")
# toke.to_gate(to_tomi)
# toke.exit_gate(to_tomi,to_gate)

class GateTest < Minitest::Test

  def setup
    @toke = Human.new("toke")
    @to_tomi = Cicket.new(160,"tomi")
    @to_gate = Gate.new("tomi")
    # toke.to_gate(to_tomi)
    # toke.exit_gate(to_tomi,to_gate)
  end

  def test_stamped
    # チケットを購入し、改札を通ると、チケットにスタンプが押されること
    assert_equal("tomi", @toke.to_gate(@to_tomi))
    end
  def test_exit_gate
    # 最初に改札口を通り
    @toke.to_gate(@to_tomi)
    # 出口の改札口を通る際、チケットのスタンプ == 行き先のgate名が同じなら、出れる事にする
    assert_equal("無事出れました", @toke.exit_gate(@to_tomi,@to_gate))
  end

end