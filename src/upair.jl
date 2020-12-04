# Potential energy function
function upair(r,data) 
  r6 = r^6
  r12 = r6^2
  return data.eps4*(data.sig12/r12 - data.sig6/r6)
end
