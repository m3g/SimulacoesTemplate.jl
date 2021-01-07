#
# Computes the total potential energy of the system and
# the force on every particle. Modifies input vector f
#
function energyandforce!(p,f,data)
  utotal = 0.
  for v in f
    v .= 0.
  end
  for ip in 1:data.N-1
    for jp in ip+1:data.N
      rij = rpbc(p[ip],p[jp],data.side)
      if rij < data.cutoff
        upair, fpair = forcepair(p[ip],p[jp],rij,data)
        utotal += upair
        f[ip] .= f[ip] .+ fpair
        f[jp] .= f[jp] .- fpair
      end
    end
  end
  return utotal, f
end

