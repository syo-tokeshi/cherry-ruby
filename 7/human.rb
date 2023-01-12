require_relative './cicket'
require_relative './gate'

class Human

  def initialize(name)
    @name = name
  end

  def to_gate(cicket)
    cicket.stamp(cicket)
  end

  def exit_gate(cicket,to_gate)
    Gate.jugde(cicket,to_gate)
  end


end