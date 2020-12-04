#
# Computes the total potential energy of the system
#

function utotal(p,data)
  utotal = 0.
  for ip in 1:data.N-1
    for jp in ip+1:data.N
      rij = rpbc(p[ip],p[jp],data.side)
      if rij < data.cutoff
        utotal += upair(rij,data) 
      end
    end
  end
  return utotal
end

