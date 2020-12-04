#
# Data for the simulation
#

using Parameters

@with_kw struct Data

  eps :: Float64 = 5.0
  sig :: Float64 = 0.5

  cutoff :: Float64 = 2.0
  side :: Float64 = 100.

  N :: Int64 = 10_000

  # Data for computation
  eps4 :: Float64 = 4*eps
  sig6 :: Float64 = sig^6
  sig12 :: Float64 = sig^12

end

#function Data(eps,sig,cutoff,side,N::Int)
#  eps4 = 4*eps
#  sig6 = sig^6
#  sig12 = sig6^2
#  return Data(eps,sig,cutoff,side,N,eps4,sig6,sig12)
#end
#
#function Data(N::Int)
#  eps = 5.0
#  sig = 0.5
#  cutoff = 2.
#  side = 100.
#  return Data(eps,sig,cutoff,side,N)
#end



