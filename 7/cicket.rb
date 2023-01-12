class Cicket
  attr_accessor :fare, :to, :stamped

  def initialize(fare,to)
    @fare = fare
    @to = to
    # チケット購入時は、スタンプは押されない(まだ改札を通ってないので)
    @stamped = ""
  end

  def stamp(cicket)
    # 受け取ったスタンプの行き先を、スタンプに押す
    cicket.stamped = cicket.to
  end

end