#
# Potential energy and force
#
function forcepair(x,y,r,data) 
  r6 = r^6
  r12 = r6^2
  r7 = r6*r
  r13 = r12*r

  drdx1 = -(x[1]-y[1])/r
  drdx2 = -(x[2]-y[2])/r

  sigfac1 = -12*(data.sig12/r13)
  sigfac2 = -6*(data.sig6/r7)

  dfacdr = -data.eps4*(sigfac1 - sigfac2)

  upair = data.eps4*(data.sig12/r12 - data.sig6/r6)  
  fx = ( -dfacdr*drdx1, -dfacdr*drdx2 ) 

  return upair, fx
end
