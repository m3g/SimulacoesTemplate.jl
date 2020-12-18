function linear_index(IND)
  J = round(Int,floor(-.5 + .5 * sqrt(1 + 8 * (IND - 1))) + 2)
  I = round(Int,J .* (3 - J) / 2 + IND - 1)
  return I, J
end
