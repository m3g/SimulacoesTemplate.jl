#
# Distance function, considering PBC
#
function rpbc(x,y,side)
  # dx is a vector of the difference in position of y and x
  d = 0.
  for i in 1:2
    dx = (y[i]-x[i])%side
    if dx > side/2
      dx = dx - side
    elseif  dx < -side/2
      dx = dx + side
    end
    d = d + dx^2
  end
  return sqrt(d)
end

