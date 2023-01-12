require_relative './cicket'
class Gate

  attr_reader :name

  def initialize(name)
    @name = name
  end

  # 受け取ったチケットのスタンプと行き先が正しいか判断する
  def self.jugde(cicket,to_gate)
    # チケットのスタンプと、最初に決めた行き先が異なっていたら
    return p "チケットのスタンプと行き先が間違っています" if cicket.stamped != to_gate.name

    # 正常系の処理
    p "無事出れました"
    # p "押されたスタンプ#{cicket.stamped} 行き先#{to_gate.name}"
  end

end