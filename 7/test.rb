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
    @cicket_to_shibuya = Cicket.new(160,"shibuya")
    @gate_to_shibuya = Gate.new("shibuya")
    @gate_to_shinjuku = Gate.new("shinjuku")
    # toke.to_gate(to_shibuya)
    # toke.exit_gate(to_shibuya,to_gate)
  end

  def test_stamped
    # チケットを購入し、改札を通ると、チケットにスタンプが押されること
    assert_equal("shibuya", @toke.to_gate(@cicket_to_shibuya))
  end

  # 正常系
  def test_exit_gate_success
    # 最初に改札口を通り
    @toke.to_gate(@cicket_to_shibuya)
    # 出口の改札口を通る際、チケットのスタンプ == 行き先のgate名が同じなら、出れる事にする
    assert_equal("無事出れました", @toke.exit_gate(@cicket_to_shibuya,@gate_to_shibuya))
  end

  # 異常系
  def test_exit_gate_failure
    @toke.to_gate(@cicket_to_shibuya)
    # 渋谷行きのチケット持って、新宿で降りるとエラーになる
    assert_equal("チケットのスタンプと行き先が間違っています", @toke.exit_gate(@cicket_to_shibuya,@gate_to_shinjuku))
  end

end