require_relative './cicket'
class Gate

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.jugde(cicket,to_gate)
    if cicket.stamped == to_gate.name
      p "無事出れました"
      p  cicket.stamped
      p  to_gate.name
    else
      p "間違いだよ"
      p  cicket.stamped
      p  to_gate.name
    end
  end



end