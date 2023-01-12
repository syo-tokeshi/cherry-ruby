class Cicket
  attr_accessor :fare, :to, :stamped

  def initialize(fare,to)
    @fare = fare
    @to = to
    # チケット購入時は、sスタンおうは押されない(まだ改札を通ってないので)
    @stamped = ""
  end

  def stamp(cicket)
    cicket.stamped = cicket.to
  end

end