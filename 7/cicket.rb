class Cicket
  attr_accessor :fare, :to, :stamped
  # ENUM_TO = ["naha","tomi","itoman"]

  def initialize(fare,to)
    @fare = fare
    @to = to
    @stamped = ""
  end

  def stamp(cicket)
    cicket.stamped = cicket.to
  end

  def hoge

  end
end