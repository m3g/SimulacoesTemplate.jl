#
# Wraps particle y using particle x as reference
#
function wrap!(x,y,side)
  for i in 1:2
    dx = (y[i]-x[i])%side
    if dx > side/2
      dx = dx - side
    elseif  dx < -side/2
      dx = dx + side
    end
    y[i] = x[i] + dx
  end
end

