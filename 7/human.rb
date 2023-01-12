require_relative './cicket'
require_relative './gate'

class Human

  def initialize(name)
    @name = name
  end

  def to_gate(cicket)
    # ゲートを通る時、スタンプに通過駅の記録が残ります
    # それを、チケットクラスで実装しているので呼び出す
    cicket.stamp(cicket)
  end

  def exit_gate(cicket,to_gate)
    Gate.jugde(cicket,to_gate)
  end

end