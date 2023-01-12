# require 'minitest/autorun'
require_relative './gate'
require_relative './cicket'
require_relative './human'

toke = Human.new("toke")
naha = Gate.new("naha")
tomi = Gate.new("tomi")
to_tomi = Cicket.new(160,"tomi")
to_gate = Gate.new("tomi")
toke.to_gate(to_tomi)
toke.exit_gate(to_tomi,to_gate)

# class GateTest < Minitest::Test
#
#   def setup
#     @to_tomi = Cicket.new(160,"tomi")
#   end
#
#   # def test_cicket
#   #   @to_tomi.stamp
#   # end
#   # def test_gate
#   #   assert(Gate.new("naha"))
#   #   assert(Gate.new("tomi"))
#   # end
#
# end