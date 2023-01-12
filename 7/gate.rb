require_relative './cicket'
class Gate

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.jugde(cicket,to_gate)
    return if cicket.stamped != to_gate.name

    p "無事出れました"
    # p "押されたスタンプ#{cicket.stamped} 行き先#{to_gate.name}"
  end

end